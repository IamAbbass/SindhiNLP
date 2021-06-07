import 'package:flutter/material.dart';
import 'translation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Select Language',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Select Language'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width-20,
              height: 50,
              child: RaisedButton(
                child: Text("Eng vs Sindhi", style: TextStyle(color: Colors.white, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TranslationPage(title: "Eng vs Sindhi", from: 'en',to: 'sd',)),
                  );

                },
              ),
            ),
            SizedBox(height: 5,),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width-20,
              height: 50,
              child: RaisedButton(
                child: Text("Sindhi vs Eng", style: TextStyle(color: Colors.white, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TranslationPage(title: "Sindhi vs Eng", from: 'sd',to: 'en',)),
                  );
                },
              ),
            ),
            SizedBox(height: 5,),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width-20,
              height: 50,
              child: RaisedButton(
                child: Text("Urdu vs Sindhi", style: TextStyle(color: Colors.white, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TranslationPage(title: "Urdu vs Sindhi", from: 'ur',to: 'sd',)),
                  );
                },
              ),
            ),
            SizedBox(height: 5,),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width-20,
              height: 50,
              child: RaisedButton(
                child: Text("Sindhi vs Urdu", style: TextStyle(color: Colors.white, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TranslationPage(title: "Sindhi vs Urdu", from: 'sd',to: 'ur',)),
                  );
                },
              ),
            ),
            SizedBox(height: 5,),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width-20,
              height: 50,
              child: RaisedButton(
                child: Text("Eng vs Urdu", style: TextStyle(color: Colors.white, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TranslationPage(title: "Eng vs Urdu", from: 'en',to: 'ur',)),
                  );
                },
              ),
            ),
            SizedBox(height: 5,),
            ButtonTheme(
              minWidth: MediaQuery.of(context).size.width-20,
              height: 50,
              child: RaisedButton(
                child: Text("Urdu vs Eng", style: TextStyle(color: Colors.white, fontSize: 18),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TranslationPage(title: "Urdu vs Eng", from: 'ur', to: 'en',)),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
