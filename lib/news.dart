
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/models/article_model.dart';
import 'package:practice/network/network_enums.dart';
import 'package:practice/network/network_helper.dart';
import 'package:practice/network/network_service.dart';
import 'package:practice/static/static_values.dart';
import 'package:practice/widgets/article_widget.dart';
import 'package:practice/models/article_model.dart';

import 'network/query_param.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  
  List<Article>? articles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: Text(
          style: GoogleFonts.acme(
                      color: Colors.grey.shade50,
                      fontSize: 20,
                      fontStyle: FontStyle.normal
                    ),
          'Articles')),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData){
            final List<Article> articles = snapshot.hasData as List<Article>;
            return ListView.builder(
              itemBuilder: (context,index){
                return ArticleWidget(article: articles[index]);
              },
              itemCount: articles.length,
              );
          }else if (snapshot.hasError){
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_outline,
                    color : Colors.red,
                    size: 25,
                  ),
                  SizedBox(height: 10,),
                  Text('Something went wrong')
                ],
              ),
            );
          }
          return Center(child: CircularProgressIndicator(),);  //return Center(child: CircularProgressIndicator(),);
        },
      )
    );
  }



  Future<List<Article>?> getData()async{
    final response = await NetworkService.sendRequest(
      requestType: RequestType.get, 
      url: StaticValues.apiUrl,
      queryParam:QP.apiQP(
        apiKey:StaticValues.apiKey,
        country : StaticValues.apiCountry

        )
      );

      print(response?.statusCode);
      return  await NetworkHelper.filterResponse(
        callBack:_ListofArticlesFromJson ,
        response: response,
        parameterName: CallBackParameterName.articles,
         onFailureCallBackWithMessage: (errorType ,msg){
          print('Error type -$errorType-  Message $msg');
          return null ;
         });

  }


  List<Article> _ListofArticlesFromJson(json) => (json as List)
  .map((e) => Article.fromJson(e as Map<String , dynamic>))
  .toList();
}