import 'package:flutter/material.dart';

class OnBoardModel {
  final String imageNames;
  final String title;
  final String description;

  OnBoardModel(this.imageNames, this.title, this.description);

  String get imageWithPath => 'assets/images/$imageNames.png';
  //String get colorWithPath => 'lib/feature/colors/$colorname';

}

class OnBoardModels {
  static final List<OnBoardModel> onBoardItems = [
    OnBoardModel(
        'picture1', 'Use shapes to decorate your designs', 'description1'),
    OnBoardModel(
        'picture2', 'Combine shapes with other object', 'description2'),
    OnBoardModel(
        'picture3', 'Animate shapes to catch the attention', 'description3'),
  ];
}
