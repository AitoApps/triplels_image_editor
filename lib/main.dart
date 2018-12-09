import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:triplels_photo_editor/editor.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'TripleLS Photo Editor',
      theme: new ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: new HomePage(title: 'Select image'),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      floatingActionButton: new FloatingActionButton.extended(
        onPressed: () async {
          var image = await ImagePicker.pickImage(source: ImageSource.gallery);

          if (image != null) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditorPage(image: image),
              ),
            );
          }
        },
        label: Text('Select image'),
        icon: Icon(Icons.add_a_photo),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}