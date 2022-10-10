import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class APIjobs extends StatefulWidget {
  const APIjobs({super.key});

  @override
  State<APIjobs> createState() => _APIjobsState();
}

class _APIjobsState extends State<APIjobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('api jobs'),),
    );
  }
}