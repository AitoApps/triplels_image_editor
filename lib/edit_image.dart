import 'dart:io';
import 'package:flutter/material.dart';

class EditImagePage extends StatefulWidget {
  EditImagePage({Key key, this.title, @required this.image}) : super(key : key);

  final File image;
  final String title;

  @override
  EditImagePageState createState() => new EditImagePageState(image);
}

class EditImagePageState extends State<EditImagePage> {
  File _image;
  File _logo;

  EditImagePageState(File image) {
    _image = image;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.title)),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.file(_image),
          DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png')
              )
            ),
          ),
        ],
      )
    );
  }
}