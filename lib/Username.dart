import 'package:flutter/material.dart';
import 'package:internship/FriendList.dart';

class UserName extends StatefulWidget {
  const UserName({Key? key}) : super(key: key);

  @override
  _UserNameState createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {

  final formKey = GlobalKey<FormState>();
  TextEditingController _textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Username Page"),
      ),
      body: SafeArea(
        child: Container(
          height: 500,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter your name:", style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.w900),),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Form(
                  key: formKey,
                  child: TextFormField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      hintText: "xyz",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      border: InputBorder.none,
                    ),
                    validator: (value){
                      if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                        return "This field cannot be empty";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    if(formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => FriendList(user: _textEditingController.text,)));
                    }
                  },
                  child: Text("SUBMIT", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20,),),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  elevation: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
