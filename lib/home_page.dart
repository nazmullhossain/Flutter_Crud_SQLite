import 'package:flutter/material.dart';
import 'package:sqlite/screen/add_user.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQLite CRUD"),
        centerTitle: true,

      ),
      body: const Center(
        child: Text("Hellow Md Nazmul Hossain"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>AddUser()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
