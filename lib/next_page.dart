import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provipractice/counter_provider.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
         Provider.of<CounterProvider>(context, listen: false).incrementCount();
        },
      ),
    );
  }
}
