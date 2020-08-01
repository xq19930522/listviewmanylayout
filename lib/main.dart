import 'package:flutter/material.dart';
import 'listview_complex_layout.dart';
import 'listview_many_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("listview多布局"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("lsitview多布局"),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>ListviewManyLayout()
                    )
                );
              }
            ),

            RaisedButton(
              child: Text("含有轮播图的lsitview多布局"),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>ListComplexLayout()
                    )
                );
              },
            )

          ],
        )
      ),
    );
  }

}