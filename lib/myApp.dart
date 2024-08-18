import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PhotoGalleryScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoGalleryScreen(),
    );
  }
}