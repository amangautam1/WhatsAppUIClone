import 'package:flutter/material.dart';
import 'package:whatsappclone/model/status_model.dart';

class status extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(children: <Widget>[
      new ListTile(
        leading: new CircleAvatar(
          foregroundColor: Theme.of(context).accentColor,
          backgroundColor: Colors.grey,
          backgroundImage: new NetworkImage(
              "https://www.includehelp.com/Members/images/aman-gautam.jpg"),
        ),
        title: new Text(
          "Aman gautam",
          style: new TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: new Text("Tap to add status update"),
      ),
      new Text(
        "Recent updates",
        style: new TextStyle(
            fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
      ),
      new ListTile(
        leading: new CircleAvatar(
          foregroundColor: Theme.of(context).accentColor,
          backgroundColor: Colors.grey,
          backgroundImage: new NetworkImage(stat[1].imgurl),
        ),
        title: new Text(
          stat[1].name,
          style: new TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: new Container(
          padding: const EdgeInsets.only(top: 5.0),
          child: new Text(stat[1].time,
              style: new TextStyle(color: Colors.grey, fontSize: 15.0)),
        ),
      ),
      new Divider(),
      new ListTile(
        leading: new CircleAvatar(
          foregroundColor: Theme.of(context).accentColor,
          backgroundColor: Colors.grey,
          backgroundImage: new NetworkImage(stat[2].imgurl),
        ),
        title: new Text(
          stat[2].name,
          style: new TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: new Container(
          padding: const EdgeInsets.only(top: 5.0),
          child: new Text(stat[2].time,
              style: new TextStyle(color: Colors.grey, fontSize: 15.0)),
        ),
      ),
    ]));
  }
}
