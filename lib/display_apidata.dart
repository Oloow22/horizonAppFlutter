import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practice/apijobs.dart';
import 'package:http/http.dart' as http;

class online extends StatefulWidget {
  const online({super.key});

  @override
  State<online> createState() => _onlineState();
}

class _onlineState extends State<online> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Differrent kind of jobs'),
      ),
      body: Center(
          child: FutureBuilder<JobsResponse>(
              future: fetchAlbum(),
              builder: (BuildContext, Snapshot) {
                if (Snapshot.hasData) {
                  return ListView.builder(
                      itemCount: Snapshot.data!.leaderboard.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text(Snapshot
                                .data!.leaderboard[index].canonicalName),
                            trailing: Text(Snapshot
                                .data!.leaderboard[index].count
                                .toString()),
                            subtitle: Text(Snapshot
                                .data!.leaderboard[index].leaderboardClass));
                      });
                } else if (Snapshot.hasError) {
                  return Text('${Snapshot.error}');
                }
                return const CircularProgressIndicator();
              })),
    );
  }

  String url =
      //'http://api.adzuna.com/v1/api/jobs/gb/categories?app_id=ad59f513&app_key=3ec7da19a6d52a50da848a78e0774806&&content-type=application/json'
      'https://api.adzuna.com/v1/api/jobs/gb/top_companies?app_id=ad59f513&app_key=3ec7da19a6d52a50da848a78e0774806';
  Future<JobsResponse> fetchAlbum() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return JobsResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('failed to load');
    }
  }

  void initState() {
    super.initState();
    fetchAlbum();
  }
}
