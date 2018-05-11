import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  final String imgurl;
  ChatScreen(this.name,this.imgurl);
  @override
  State<StatefulWidget> createState() => _chatState();
}

class _chatState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        titleSpacing: -10.0,
        title: new Row(
          children: <Widget>[
            new CircleAvatar(
              backgroundImage: new NetworkImage(widget.imgurl),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            new Text(widget.name),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.videocam),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new Icon(Icons.call),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new NetworkImage(
                    "https://i.pinimg.com/originals/8f/ba/cb/8fbacbd464e996966eb9d4a6b7a9c21e.jpg"),
                fit: BoxFit.fitWidth)),
        child: new Column(
          children: <Widget>[
            new Flexible(child: new Container()),
            new Row(children: <Widget>[
              new Flexible(
                  child: new Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: new Theme(
                  data: Theme.of(context).copyWith(primaryColor: Colors.white),
                  child: new TextField(
                    decoration: new InputDecoration(
                      prefixIcon: new Icon(Icons.insert_emoticon, color: Colors.grey),
                      hintText: "Type a message",
                      suffixIcon: new Icon(Icons.camera_alt,color: Colors.grey,),
                      border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(30.0)),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              )),
              new Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                    icon: new Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    onPressed: null),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ])
          ],
        ),
      ),
    ); //modified
  }
}
