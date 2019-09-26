import 'package:flutter/material.dart';

class FileCloud extends StatefulWidget {
  @override
  _FileCloudState createState() => _FileCloudState();
}

 String teks="";

class _FileCloudState extends State<FileCloud> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              new Row(
                children: <Widget>[
                  // text box
                  TextField(
                    decoration: new InputDecoration(
                      hintText: "Cari Berdasarkan Tema"
                    ),
                    onChanged: (String str){
                      setState(() {
                        teks = str;
                      });
                    },
                  ),
                  new Text(teks),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
