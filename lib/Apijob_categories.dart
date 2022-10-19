import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:practice/apijobs.dart';
import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('example'),
      ),
      body: Center(
          child: FutureBuilder<Jobscategories>(
              future: fetchAlbum(),
              builder: (BuildContext, Snapshot) {
                if (Snapshot.hasData) {
                  return ListView.builder(
                      itemCount: Snapshot.data!.results.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(Snapshot.data!.results[index].label),
                          trailing: Text(Snapshot.data!.results[index].tag),
                          // subtitle: Text(Snapshot.data!.leaderboard[index].leaderboardClass
                        );
                      });
                } else if (Snapshot.hasError) {
                  return Text('${Snapshot.error}');
                }
                return const CircularProgressIndicator();
              })),
    );
    ;
  }

  String url =
      'http://api.adzuna.com/v1/api/jobs/gb/categories?app_id=ad59f513&app_key=3ec7da19a6d52a50da848a78e0774806&&content-type=application/json'; // 'https://api.adzuna.com/v1/api/jobs/gb/top_companies?app_id=ad59f513&app_key=3ec7da19a6d52a50da848a78e0774806';
  Future<Jobscategories> fetchAlbum() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Jobscategories.fromJson(response.body);
    } else {
      throw Exception('failed to load');
    }
  }

  void initState() {
    super.initState();
    fetchAlbum();
  }
}
