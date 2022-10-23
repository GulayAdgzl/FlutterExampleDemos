import 'dart:async';

import 'package:flutter/material.dart';

import 'OnBoard_Model.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({Key? key, required this.selectedIndex}) : super(key: key);
  final int selectedIndex;

  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  /*late final Timer _timer;
  static const _colors = [
    Colors.black,
    Colors.amber,
    Color.fromARGB(255, 0, 255, 0),
  ];
  int _index = 0;
  void _circulate() {
    (_index != _colors.length - 1) ? _index++ : _index = 0;
    _tabController.animateTo(_index);
    setState(() {});
  }*/

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: OnBoardModels.onBoardItems.length,
      vsync: this,
      /* initialIndex: _index);
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _circulate*/
    );
  }

  /* @override
  void dispose() {
    _tabController.dispose();
    _timer.cancel();
    super.dispose();
  }*/

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _tabController.animateTo(widget.selectedIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      controller: _tabController,
      //color: _colors[_tabController.index],
    );
  }
}
