import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {

  String sender;
  String receiver;
  Chat(this.sender, this.receiver);
  @override
  _ChatState createState() => _ChatState();
}

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

class _ChatState extends State<Chat> {

  TextEditingController _textEditingController = new TextEditingController();

  void dispose()
  {
    _textEditingController.dispose();
    super.dispose();
  }

  List<ChatMessage> messages = [];
  @override

  void initState() {
    // TODO: implement initState
    messages.add(ChatMessage(messageContent: "Hi, ${widget.sender}", messageType: "receiver"));
    messages.add(ChatMessage(messageContent: "So, whats going on nowadays ?", messageType: "receiver"),);
    messages.add(ChatMessage(messageContent: "Hey, ${widget.receiver}, I am doing fine. What about you ?", messageType: "sender"),);
    messages.add(ChatMessage(messageContent: "I am doing OK.", messageType: "receiver"));
    messages.add(ChatMessage(messageContent: "Oh Nice...", messageType: "sender"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      dispose();
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back,color: Colors.black,),
                  ),
                  SizedBox(width: 4,),
                  Icon(Icons.person_pin, color: Colors.lightBlueAccent,size: 40,),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("${widget.receiver}",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                        SizedBox(height: 6,),
                        Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"? Alignment.topLeft:Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"? Colors.grey.shade200:Colors.blue[200]),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${messages[index].messageType == "receiver" ? widget.receiver : widget.sender}", style: TextStyle(fontSize: 10),),
                        Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                          hintText: "Write message...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  FloatingActionButton(
                    onPressed: (){
                      if(_textEditingController.text.isNotEmpty)
                        {
                          setState(() {
                            messages.add(ChatMessage(messageContent: _textEditingController.text, messageType: "sender"));
                            _textEditingController.clear();
                          });
                        }
                    },
                    child: Icon(Icons.send,color: Colors.white,size: 18,),
                    backgroundColor: Colors.blue,
                    elevation: 0,
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}
