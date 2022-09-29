import 'package:flutter/material.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
       title: 'Flutter Demo',
       theme: ThemeData(
        primaryColor: Colors.green,
       ),
       initialRoute: '/',
       routes: {
        '/': (context) => myHomePage(),
        '/second': (context) => myHomePage2(),
       }
      );

  }
}

class myHomePage extends StatelessWidget{
  const myHomePage({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/second');
              }, 
              child: const Text(
                'Press to go to next page',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              
              
            ),
            
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

class myHomePage2 extends StatelessWidget{
  const myHomePage2({super.key});

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page 2'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: const Text('Press to go back'),
            )
          ],
        ),
      ),
    );
  }
}