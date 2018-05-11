import 'package:flutter/material.dart';
import 'package:whatsappclone/camera_full.dart';
import 'package:whatsappclone/contacts.dart';
import 'package:whatsappclone/new_call.dart';
import 'package:whatsappclone/pages/calls.dart';
import 'package:whatsappclone/pages/camera.dart';
import 'package:whatsappclone/pages/chats.dart';
import 'package:whatsappclone/pages/status.dart';

class WhatsAppHome extends StatefulWidget {
  var cameras;
  WhatsAppHome(this.cameras);
  @override
  State<StatefulWidget> createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  _fab selectedfab;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(_handleTab);
    selectedfab = fablist[1];
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTab() {
    setState(() {
      selectedfab = fablist[_tabController.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.camera_alt),
            ),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
                    const PopupMenuItem(
                        value: "Newgroup", child: Text("New group")),
                    PopupMenuItem(
                      value: "New broadcast",
                      child: Text("New broadcast"),
                    ),
                    PopupMenuItem(
                      value: "WhatsApp web",
                      child: Text("WhatsApp web"),
                    ),
                    PopupMenuItem(
                      value: "Starred messages",
                      child: Text("Starred message"),
                    ),
                    PopupMenuItem(
                      value: "Setting",
                      child: Text("Setting"),
                    )
                  ])
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new camera(widget.cameras),
          new chats(),
          new status(),
          new calls()
        ],
      ),
      floatingActionButton: buildFloatingActionButton(selectedfab),
    );
  }

  Widget buildFloatingActionButton(_fab page) {
    if (!page.fabDefined) return null;
    return new FloatingActionButton(
      key: page.fabKey,
      backgroundColor: Theme.of(context).accentColor,
      child: new Icon(page.fabIcon.icon, color: Colors.white),
      onPressed: () => startAction(page),
      elevation: 0.6,
    );
  }

  void startAction(_fab page) {
    switch (page.label) {
      case "chats":
        Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
          // return new contacts();
          return new Contacts();
        }));
        break;
      case "status":
        Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
          print("clicled");
          return new camera_full();
        }));
        break;
      case "calls":
        Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
          print("clicled");
          return new new_call();
        }));
    }
  }
}

class _fab {
  _fab({this.label, this.icon});
  final IconData icon;
  final String label;
  Icon get fabIcon => new Icon(icon);
  bool get fabDefined => icon != null;
  Key get fabKey => new ValueKey<Icon>(fabIcon);
  //Key get fabKey => new ValueKey<Color>(fabColor);
}

List<_fab> fablist = [
  new _fab(icon: null),
  new _fab(
    label: "chats",
    icon: Icons.message,
  ),
  new _fab(label: "status", icon: Icons.photo_camera),
  new _fab(label: "calls", icon: Icons.add_call),
];
