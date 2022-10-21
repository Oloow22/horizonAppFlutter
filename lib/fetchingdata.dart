import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practice/apijobs.dart';
import 'package:http/http.dart' as http;
class RemotewxApi extends StatefulWidget {
  const RemotewxApi({super.key});

  @override
  State<RemotewxApi> createState() => _RemotewxApiState();
}

class _RemotewxApiState extends State<RemotewxApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Available Jobs Out their'),
      ),
      body:Center(
          child: FutureBuilder<Jobs>(
              future: fetchAlbum(),
              builder: (BuildContext, Snapshot) {
                if (Snapshot.hasData) {
                  return ListView.builder(
                      itemCount: Snapshot.data!.jobs.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            // title: Text(Snapshot
                            //     .data!.jobs[index].title),
                            leading: Text(Snapshot
                                .data!.jobs[index].companyName
                                .toString()),
                                title: Text(Snapshot
                                .data!.jobs[index].category
                                .toString()),
                                subtitle: Text(Snapshot
                                .data!.jobs[index].salary),
                             trailing: Image.network(Snapshot
                               .data!.jobs[index].companyLogo),
                             
                                );
                      });
                } else if (Snapshot.hasError) {
                  return Text('${Snapshot.error}');
                }
                return const CircularProgressIndicator();
              })),);
  }




   String url =
      //'http://api.adzuna.com/v1/api/jobs/gb/categories?app_id=ad59f513&app_key=3ec7da19a6d52a50da848a78e0774806&&content-type=application/json'
      'https://remotive.com/api/remote-jobs?limit=30';
  Future<Jobs> fetchAlbum() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Jobs.fromJson((response.body));
    } else {
      throw Exception('failed to load');
    }
  }

  void initState() {
    super.initState();
    fetchAlbum();
  }
}