import 'package:demos/Flutter_101/button_learn.dart';
import 'package:demos/flutter_101/appbar_learn.dart';
import 'package:demos/flutter_101/indicator_learn.dart';
import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.8);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(_currentPageIndex.toString()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: Icon(Icons.chevron_left),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              //sayfayi kontrol etmek için
              _pageController.nextPage(
                  duration: _DurationUtility._durationLow,
                  curve: Curves.slowMiddle);
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        onPageChanged: _updatePageIndex,
        padEnds: true,
        //padEnds:true ortadan başlatır.
        controller: _pageController,

        //diğer sayfanın ne kadar önizlemesi getireceğini yaz.viewportFraction
        children: [ButtonLearnView(), AppBarLearn(), IndicatorLearnView()],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = const Duration(seconds: 1);
}
