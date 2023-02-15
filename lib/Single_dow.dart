

import 'package:flutter/material.dart';

import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class singledow extends StatefulWidget {
  const singledow({super.key});

  @override
  State<singledow> createState() => _singledowState();
}

class _singledowState extends State<singledow> {
  TextEditingController url=TextEditingController();
  double? _Progress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Text("Download any File From URL",style:TextStyle(fontSize: 20),textAlign: TextAlign.center,),
  SizedBox(height: 20,),
  TextField(
   controller:url,
    decoration: InputDecoration(label: Text('url')),
  ),
SizedBox(height: 16,),
_Progress !=null? CircularProgressIndicator():

ElevatedButton(onPressed: () {
FileDownloader.downloadFile(url: url.text.trim(),
onProgress: (name, progress){
  setState(() {
    
    _Progress=progress;

  });
}, onDownloadCompleted: (Value) {
  print('path $Value');
  setState(() {
    
    _Progress=null;
  });
},

);
}, child: Text('downlod'))

],
      ),
      
      ),
    );
  }
}