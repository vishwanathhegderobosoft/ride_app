import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  _CameraState createState() => _CameraState();

  static XFile? storeImage;
  static Future pickImage() async {
    final image = ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    image.then((value) {
      storeImage = XFile(value!.path);
    });
  }

  static Future clickImage() async {
    final image = ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;

    image.then((value) {
      storeImage = XFile(value!.path);
    });
  }
}

class _CameraState extends State<Camera> {
  @override
  void initState() {
    Camera.pickImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Image.file(File(Camera.storeImage!.path)));
  }
}
