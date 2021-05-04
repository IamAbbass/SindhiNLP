import 'package:flutter/material.dart';

class TranslationPage extends StatefulWidget {
  TranslationPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _TranslationPageState createState() => _TranslationPageState();
}

class _TranslationPageState extends State<TranslationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: "Type here .."
              ),
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text("Translation will appear here", style: TextStyle(color: Colors.white),),
              ),
              height: 150,
              width: MediaQuery.of(context).size.width,
            ),


          ],
        ),
      ),
    );
  }
}
