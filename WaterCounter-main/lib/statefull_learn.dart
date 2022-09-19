import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_animated_cards/flutter_animated_cards.dart';

class StatefullLearn extends StatefulWidget {
  //Notes:2 tane class karşımıza geldi
  //1.kısım değişmez bir componentdir.sadece dışardan parametre alır.Stateless gibi çalışır
  //2.ksıım ise hayatı belirleyen kısımdır.
  //
  //statelesswidget in üzerine gelip tıklayınca convert to statefulwidget yaptı
  //counter ile alakalı bir işlem geliştirmek istiyorsam body e bir text yazarız 1 yazdık

  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  // int countValue = 0; private dönüştür
  //aynı metodu niye 2 kez yazıyorum
  //
  int _countValue = 0;

  //int _counterCustom = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  /*
  void incrementValue() {
    setState(() {
      _countValue = _countValue + 1;
    });
  }

  void deincrementValue() {
    setState(() {
      _countValue = _countValue - 1;
    });
  }
  */
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle)),

      //floatingActionButton row la sardı .widget olduğu için ve 2 tane buton old.için
      floatingActionButton: Row(
        //aynı oranda sıkıştırsın diye
        mainAxisSize: MainAxisSize.min,
        //FloatingActionButton padding attı soluna
        //iç içe yazmamk için  method olarak yaz paddingleri
        children: [
          _deincrementButton(),
          _incrementButton(),
        ],
      ),

      body: Center(
        child: Column(
          children: [
            Card(
              color: Colors.blue,
              margin: WaterMargins.cardMargin,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: SizedBox(
                  height: 500,
                  width: 500,
                  child: Center(
                    child: Text(
                      _countValue.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: ColorsItems.porchase),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _incrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(true);
        },
        child: Icon(
          Icons.add,
          color: IconColors.froly,
          size: IconSizes.iconSmall,
        ),
      ),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: IconButton(
        onPressed: () {
          _updateCounter(false);
        },
        icon: Icon(Icons.water),
        //child: Icon(Icons.remove),
      ),
    );
  }
}

class LanguageItems {
  static const welcomeTitle = "Water Counter";
}

class WaterMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

class ColorsItems {
  static Color porchase = const Color.fromARGB(255, 77, 58, 163);
}

class IconSizes {
  static double iconSmall = 40;
  double iconSmall2x = 80;
}

class IconColors {
  static Color froly = Color.fromARGB(255, 117, 109, 206);
}
