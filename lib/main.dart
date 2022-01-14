import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class Owner {
  String name = "Bornak Paul";
  String ocupation = "Mobile Application Developer";
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      //* Provider is created here
      create: (_) =>
          Owner(), //* It has the reference of all the datas present in Owner class
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final owner = Provider.of<Owner>(context); //* Provider is used here
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My name is ' + owner.name,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'I am a ' + owner.ocupation,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
