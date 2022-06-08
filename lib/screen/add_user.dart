import 'package:flutter/material.dart';


class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  late  final _userNameController=TextEditingController();
  var _userContactController=TextEditingController();
  var _userDescriptionController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              const Text("Add New Details",style: TextStyle(
                fontSize: 20,
                color: Colors.teal,
                fontWeight: FontWeight.w500
              )
                ,),
             const SizedBox(height: 20.0,),
             TextField(
               controller: _userNameController,
               decoration: const InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "Enter Name",
                 label: Text('Name'),

               ),
             ),


              const SizedBox(height: 20.0,),
              TextField(
                controller: _userContactController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Contact",
                  label: Text('Contact'),

                ),
              ),

              const SizedBox(height: 20.0,),
              TextField(
                controller: _userDescriptionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Descripiton",
                  label: Text('Description'),

                ),
              ),

              SizedBox(height: 20.0,),

              Row(
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.teal,
                        textStyle: TextStyle(fontSize: 15)
                      ),
                      onPressed: (){},
                      child: Text("Save Details")),
                  SizedBox(width: 10.0,),

                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Colors.red,
                          textStyle: TextStyle(fontSize: 15)
                      ),
                      onPressed: (){
                        _userDescriptionController.text="";
                        _userContactController.text="";
                        _userNameController.text='';

                      },
                      child: Text("Clear Details")),
                ],
              )



            ],
          ),

        ),
      )
    );
  }
}
