import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/static/static_values.dart';

import 'models/article_model.dart';
import 'network/network_enums.dart';
import 'network/network_helper.dart';
import 'network/network_service.dart';
import 'network/query_param.dart';

class Breaking extends StatelessWidget {
  const Breaking({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final publishedAt = article.publishedAt?.split('T')[0];
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData){
            final List<Article> articles = snapshot.hasData as List<Article>;
            return ListView.builder(
              itemBuilder: (context,index){
                return Padding(
      padding: EdgeInsets.all(24.0),
      child : Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey,
            backgroundImage: article.imageUrl != null ?
            NetworkImage(article.imageUrl!): null,
          ),
          const SizedBox(width: 12,),
          Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(article.title!,
                style: Theme.of(context).textTheme.subtitle1,
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(article.author,
                style: TextStyle(color: Colors.grey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Text(article.source.name ?? '',
                    style: TextStyle(color: Colors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    
                    ),
                    Spacer(),
                    Icon(
                      Icons.calendar_today_sharp,
                      size: 15,
                    ),
                    SizedBox(width: 8,),
                    Text(publishedAt ?? '',
                      style: TextStyle(color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                    )
                  ],
                )

              ],
            )
            ) ,
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
            )
        ],
      )
      );
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
        callBack:(json){

        } , 
        response: response,
        parameterName: CallBackParameterName.articles,
         onFailureCallBackWithMessage: (errorType ,msg){
          print('Error type -$errorType-  Message $msg');
          return null ;
         });

  }