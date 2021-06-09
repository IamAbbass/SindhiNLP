import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:http/http.dart' as http;

class TranslationPage extends StatefulWidget {
  final String title;
  final String from;
  final String to;

  TranslationPage({Key key, this.title, this.from, this.to}) : super(key: key);

  @override
  _TranslationPageState createState() => _TranslationPageState();
}

class _TranslationPageState extends State<TranslationPage> {

  final translator = GoogleTranslator();

  var _output = "";

  Future _httpGetAPI(String url){
     return http.get(Uri.parse('https://phplaravel-552536-1954171.cloudwaysapps.com/api/'));
  }

  String httpGetAPI(String url){
     return 'https://phplaravel-552536-1954171.cloudwaysapps.com/api/';
  }

  void _translate(String input) async{
    var translation = translator.translate(input, from: widget.from, to: widget.to);
    translation.then((value){
      setState(() {
        // value = value.replaceAll("bad-word", "good-word");
        if(value != null){
          _output = value;
        }else{
          _output =  "Translation will appear here";
        }
      });
    });

    //API for en to sd
    if(widget.from == 'en' && widget.to == 'sd'){
      var output_api = httpGetAPI("https://phplaravel-552536-1954171.cloudwaysapps.com/api/$input");
    }
  }

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
              onChanged: (String text){
                _translate(text);
              },
              decoration: InputDecoration(
                hintText: "Type here .."
              ),
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 10,),
            Text("Translation:",style: TextStyle(fontSize: 18),),
            Container(
              padding: EdgeInsets.fromLTRB(5,10,5,10),
              color: Colors.blue,
              child: Center(
                child: Text(_output, style: TextStyle(color: Colors.white, fontSize: 18),textAlign: TextAlign.center,),
              ),
              // height: 150,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }  
}
