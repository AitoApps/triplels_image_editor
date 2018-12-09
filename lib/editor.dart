import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class EditorPage extends StatelessWidget {

  EditorPage({Key key, @required this.image}) : super(key : key);

  final File image;

  @override
  Widget build(BuildContext context) {
    void handleOnTextPressed() {
      showDialog(
        context: context,
        builder: (BuildContext buildCtx) {
          final TextField textField = TextField();
          return AlertDialog(
            title: Text('Add text'),
            content: textField,
            actions: <Widget>[
              new FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(buildCtx).pop();
                }
              ),
              new FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(buildCtx).pop();
                }
              ),
            ],
          );
        }
      );
    }

    void _handleOnStickerPressed() {
      
    }

    final Widget editToolsButtonBar = Container(
      color: Theme.of(context).primaryColor,
      child: ButtonBar(
        mainAxisSize: MainAxisSize.max,
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: _handleOnStickerPressed,
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Icon(Icons.image, color: Colors.white),
                Text('Sticker', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          FlatButton(
            onPressed: handleOnTextPressed,
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Icon(Icons.text_fields, color: Colors.white),
                Text('Text', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ]
      )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit image'),
        actions: <Widget>[
          FlatButton(child: Text('Save'), textColor: Colors.white, onPressed: () {
            // TODO save image
          }),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            // TODO: change the stack to canvas
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.file(image),
              ],
            ),
          ),
          editToolsButtonBar,
        ],
      ),
    );
  }
}

class CollapsibleButtonBar extends StatefulWidget {

  @override
  CollapsibleButtonBarState createState() => CollapsibleButtonBarState();
}

class CollapsibleButtonBarState extends State<CollapsibleButtonBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}