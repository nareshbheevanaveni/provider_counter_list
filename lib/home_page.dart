import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provipractice/counter_provider.dart';


import 'next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('${Provider.of<CounterProvider>(context).getValue()}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage(),));
            }, child: Text('Next Page'))
          ],
        ),
      ),

    );
  }
}
