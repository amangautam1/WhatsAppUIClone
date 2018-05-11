import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
class camera extends StatefulWidget{
  List<CameraDescription> cameras;
  camera(this.cameras);
  @override
  State<StatefulWidget> createState() {
    return new CameraState();
  }
}
class CameraState extends State<camera>{
  CameraController controller;
  @override
  void initState() {
    super.initState();
    controller=CameraController(widget.cameras[0],ResolutionPreset.medium);
    controller.initialize().then((_){
      if(mounted)
        return;
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
  if(!controller.value.initialized){
    print("not connected");
    return new Container();

  }
  return new Container(
    child:new AspectRatio(
    aspectRatio: controller.value.aspectRatio,
    child: CameraPreview(controller),
     )
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

}