import 'package:flutter/material.dart';
import 'package:whatsappclone/model/contacts_model.dart';

class new_call extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new newCallState();
}

class newCallState extends State<new_call> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Select contact"),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0)),
          new Icon(Icons.person_add),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 10.0)),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new ListView.builder(
          itemCount: cont.length,
          itemBuilder: (context, l) => new Column(
                children: <Widget>[
                  new Divider(
                    height: 10.0,
                  ),
                  new ListTile(
                    leading: new CircleAvatar(
                      foregroundColor: Theme.of(context).accentColor,
                      backgroundColor: Colors.grey,
                      backgroundImage: new NetworkImage(cont[l].imgurl),
                    ),
                    title: new Text(
                      cont[l].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: new Text(
                      "MOBILE",
                      style: new TextStyle(
                          color: Theme.of(context).accentColor, fontSize: 12.0),
                    ),
                    trailing: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Icon(
                          Icons.call,
                          color: Theme.of(context).primaryColor,
                        ),
                        new Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0)),
                        new Icon(
                          Icons.videocam,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    ),
                  ),
                ],
              )),
    );
  }
}
