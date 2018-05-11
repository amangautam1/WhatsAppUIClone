import "package:flutter/material.dart";
import 'package:whatsappclone/model/contacts_model.dart';
class Contacts extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>new _stateContacts();

}
class _stateContacts extends State<Contacts>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Select Contacts"),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0)
            ),
            new Icon(Icons.person_add),
            new Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0)
            ),
            new Icon((Icons.more_vert))
          ],
        ),
        body: new ListView.builder(
          itemCount: cont.length,
          itemBuilder: (context, l) =>
          new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme
                      .of(context)
                      .accentColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(cont[l].imgurl),
                ),
                title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(cont[l].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(cont[l].type,
                        style: new TextStyle(
                            color: Theme.of(context).accentColor, fontSize: 12.0),
                      ),

                    ]

                ),
                subtitle: new Container(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: new Text(cont[l].status,
                    style: new TextStyle(color: Colors.grey, fontSize: 14.0)),
              ),
              ),
            ],
          ),
        )
    );
  }
}