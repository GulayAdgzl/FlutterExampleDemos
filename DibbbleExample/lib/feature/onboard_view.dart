import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/feature/OnBoard_Model.dart';
import 'package:flutter_full_learn/feature/tab_indicator.dart';
import 'package:flutter_full_learn/product/widget/onBoard_Card.dart';

import '../product/padding/page_padding.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  final String _next = 'Next';
  late final TabController _tabController;
  int _selectedindex = 0;

  bool get _isFirstPage => _selectedindex == 0;

  bool get _isLastPage =>
      OnBoardModels.onBoardItems.length - 1 == _selectedindex;
  ValueNotifier<bool> isBackEnable = ValueNotifier(false);
  //Butona bastıkça resmin ve sayfanın ilerlemesi için
  void _incrementAndChange([int? value]) {
    //Eğer sayfa ilerlerken sonuncu sayfada yine butona basıp cache atarsa
    if (_isLastPage && value == null) {
      _changeBackEnable(true);

      //son sayfadan başa geri girmek için
      //start yapmasını istersek
//value yazmamın sebebi sayfadaki resmin değişmesi
      return;
    }
    _changeBackEnable(false);
    _IncrementSelectedPages(value);
  }

  void _changeBackEnable(bool value) {
    if (value == isBackEnable.value) return;
    isBackEnable.value = value;
  }

  void _IncrementSelectedPages([int? value]) {
    setState(() {
      if (value != null) {
        _selectedindex = value;
      } else {
        _selectedindex++;
      }
    });
  }

  /* @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: OnBoardModels.onBoardItems.length, vsync: this);
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Padding(
            padding: PagePadding.all(),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (value) {
                      _incrementAndChange(value);
                    },
                    itemCount: OnBoardModels.onBoardItems.length,
                    itemBuilder: (context, index) {
                      return OnBoardCard(
                          model: OnBoardModels.onBoardItems[index]);
                    },
                  ),
                ),
                Column(
                  children: [
                    TabIndicator(selectedIndex: _selectedindex),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )),
                    FloatingActionButton.extended(
                      onPressed: () {
                        (_incrementAndChange);
                      },
                      label: Text(_next),
                      backgroundColor: Colors.white,
                    ),
                  ],
                )
              ],
            )));
  }
}
