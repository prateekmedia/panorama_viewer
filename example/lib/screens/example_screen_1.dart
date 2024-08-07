import 'package:flutter/material.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class ExampleScreen1 extends StatefulWidget {
  const ExampleScreen1({super.key, required this.title});
  final String title;
  @override
  ExampleScreen1State createState() => ExampleScreen1State();
}

class ExampleScreen1State extends State<ExampleScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PanoramaViewer(
        croppedArea: const Rect.fromLTWH(2533.0, 1265.0, 5065.0, 2533.0),
        croppedFullWidth: 10132.0,
        croppedFullHeight: 5066.0,
        background: Image.asset('assets/panorama_cropped_thumb.jpg'),
        child: Image.asset('assets/panorama_cropped.jpg'),
      ),
    );
  }
}
