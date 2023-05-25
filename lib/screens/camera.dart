import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List <CameraDescription> cameras = [];
class Camera extends StatefulWidget {
  const Camera({Key? key}):super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController? _cameraController;
  int index = 0;
 var  CameraValue;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraController = CameraController(cameras[index], ResolutionPreset.high);
    CameraValue = _cameraController?.initialize();
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children:     
    [
      FutureBuilder(builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done){
          return CameraPreview(_cameraController!);
        }
        return Center(
          child: CircularProgressIndicator(
            
          ),
        );
      },
      future: CameraValue,
      )
    ],);
  }
}