// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_unnecessary_containers
// ignore_for_file: file_names, no_logic_in_create_state, camel_case_types, library_private_types_in_public_api

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class mycamera extends StatefulWidget {
  final List<CameraDescription> mycameras;
  const mycamera({
    Key? key,
    required this.mycameras,
  }) : super(key: key);

  @override
  _mycamerastate createState() => _mycamerastate();
}

class _mycamerastate extends State<mycamera> {
  CameraController? controller;
  @override
  void initState() {
    super.initState();
    controller = CameraController(widget.mycameras[0], ResolutionPreset.medium);
    controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller!.value.isInitialized) {
      return Scaffold(
        body: Container(
          child: const Text('NoCamera'),
        ),
      );
    }
    return Scaffold(
      body: AspectRatio(
        aspectRatio: controller!.value.aspectRatio,
        child: CameraPreview(controller!),
      ),
    );
  }
}
