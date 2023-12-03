import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:practice/models/model.dart';
import 'package:practice/service/api_service.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
Future<Album>fetchAlbum()async{
  final client = ApiClient(Dio(BaseOptions(contentType: 'application/json')));
  final response = await client.getClient();
  return response;
}

class _HomePageState extends State<HomePage> {
  String id='no id';
  String body = 'no body';
  String title='no title';
  String appId = 'no appId';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(id,style: const TextStyle(color: Colors.red),),
          const SizedBox(height: 10,),
          Text(title,style: const TextStyle(color: Colors.green)),
          const SizedBox(height: 10,),
          Text(body,style: const TextStyle(color: Colors.blue)),
          const SizedBox(height: 10,),
          Text(appId,style: const TextStyle(color: Colors.yellow)),
          const SizedBox(height: 10,),
          Center(
            child: ElevatedButton(onPressed: (){
              fetchAlbum().then((value)async {
                setState(() {
                  appId = value.userId.toString();
                  id = value.id.toString();
                  title = value.title.toString();
                  body = value.body.toString();
                });

              });
            }, child: const Text('get data')),
          ),
        ],
      ),
    );
  }
}
