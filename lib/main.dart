import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: ListView(
children: [
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.7,
          // color: Colors.deepPurpleAccent,
          color: Colors.deepOrangeAccent,

        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 36),
            children: <TextSpan>[
              TextSpan(
                text: 'Login /  ',
              ),
              TextSpan(
                text: 'SignUp ',
              ),
            ],
          ),
          textScaleFactor: 0.5,
        ),
        TextFormField(),
        const Text("Or signin with"),
        Row(
          children: [
            Image.asset("assets/apple.png"),
            Image.asset("assets/fb.png"),
            Image.asset("assets/gg.png"),
          ],
        )
    ],
  ),

],      ));
  }
}
