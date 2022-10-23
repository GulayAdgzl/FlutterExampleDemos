import 'package:flutter/material.dart';
import 'package:flutter_full_learn/feature/OnBoard_Model.dart';

class OnBoardCard extends StatelessWidget {
  final OnBoardModel model;
  const OnBoardCard({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(model.imageWithPath),
        Text(model.title, style: Theme.of(context).textTheme.headline4),
        Text(model.description),
      ],
    );
  }
}
