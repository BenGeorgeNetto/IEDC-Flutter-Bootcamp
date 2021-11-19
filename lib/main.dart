import 'package:flutter/material.dart';
import 'package:iedc_app1/card.dart';
import 'package:iedc_app1/names.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(
          title: 'MBCET Clubs'
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title = 'Demo'});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: names.cardDetails.length,
            itemBuilder: (BuildContext context, index) {
          return imageCard(heading: names.cardDetails[index].heading, subheading: names.cardDetails[index].subHeading, supportingText: names.cardDetails[index].about, cardImage: names.cardDetails[index].image);
        })
    );
  }
}

