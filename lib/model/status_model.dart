import 'package:flutter/material.dart';

class StatusModel {
  final String imgurl;
  final String name;
  final String time;
  StatusModel({this.name, this.time, this.imgurl});
}

List<StatusModel> stat = [
  new StatusModel(
      name: "Aman gautam",
      time: "Today,3:00AM",
      imgurl: "https://www.includehelp.com/Members/images/aman-gautam.jpg"),
  new StatusModel(
      name: "Hero",
      time: "Today, 4:23AM",
      imgurl:
          "https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg"),
  new StatusModel(
      name: "Mack",
      time: "Today, 5:23PM",
      imgurl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB0qsqzuV2X3LCCSeJujDyK8vg5SIz1JNAP-f5N_Tc2MQsNEEWGA"),
  new StatusModel(
      name: "Alexa",
      time: "Yesterday, 4:43PM",
      imgurl:
          "https://pbs.twimg.com/profile_images/927446347879292930/Fi0D7FGJ_400x400.jpg"),
];
