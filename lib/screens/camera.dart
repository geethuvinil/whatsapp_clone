import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription> cameras = [];

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  CameraController? _cameraController;
  int index = 0;
  var CameraValue;

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
      children: [
        FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return CameraPreview(_cameraController!);
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          future: CameraValue,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 80,
            child: Row(
              children: [
                Icon(Icons.insert_photo,size: 40,color: Colors.white,),
                InkWell(child: Icon(Icons.panorama_fish_eye,size: 100,color: Colors.white,)),
                InkWell(
                  onTap: (){
                    setState(() {
                      index = (index == 0 ) ? 1 :0;
                      _cameraController = CameraController(cameras[index], ResolutionPreset.high);
                      CameraValue = _cameraController?.initialize();
                    });
                  },
                  child: Icon(Icons.cameraswitch_outlined,size: 40,color: Colors.white,))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
