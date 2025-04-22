import 'package:desafio/api.dart';
import 'package:desafio/domain/dog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Dog> futureDog;

  @override
  void initState() {
    super.initState();
    futureDog = fetchDog();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;
  

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<Dog> futureDog;
  @override
  void initState() {
    super.initState();
    futureDog = fetchDog();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<Dog>(
              future: futureDog,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                 return Column(
                  children: [
                    Image.network(snapshot.data!.message ?? ""),
                  ],
                 );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return const CircularProgressIndicator();
              },
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchDog,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
