import 'package:camera/camera.dart';
import 'package:flutter/material.dart';


List<CameraDescription>? cams = [];
class Cam extends StatefulWidget {
  const Cam({Key? key}):super(key: key);

  @override
  State<Cam> createState() => _CamState();
}

class _CamState extends State<Cam> {
  CameraController? _cameraController;
  var cameraValue;
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraController = CameraController(cams![index],ResolutionPreset.high );
    cameraValue = _cameraController?.initialize();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
          return CameraPreview(_cameraController!);
        }
        return CircularProgressIndicator();
      },),
    );
  }
}