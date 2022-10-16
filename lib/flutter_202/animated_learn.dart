import 'package:flutter/material.dart';

const double kZero = 0;

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = false;

  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
          title: _placeHolderWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeVisible();
            controller.animateTo(_isVisible ? 1 : kZero);
          },
        ),
        body: Column(
          children: [
            AnimatedOpacity(
              opacity: _isOpacity ? 1 : kZero,
              duration: _DurationItems.durationLow,
              child: ListTile(
                title: Text('data'),
                trailing: IconButton(
                    onPressed: () {
                      changeOpacity();
                    },
                    icon: Icon(Icons.account_balance)),
              ),
            ),
            AnimatedDefaultTextStyle(
                child: Text('data'),
                style: (_isVisible
                        ? context.textTheme().headline1
                        : context.textTheme().subtitle1) ??
                    TextStyle(),
                duration: _DurationItems.durationLow),
            AnimatedIcon(icon: AnimatedIcons.home_menu, progress: controller),
            AnimatedContainer(
              margin: EdgeInsets.all(5),
              color: Colors.black,
              duration: _DurationItems.durationLow,
              height:
                  _isVisible ? kZero : MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            Expanded(
                child: Stack(
              children: [
                AnimatedPositioned(
                    curve: Curves.elasticOut,
                    top: 30,
                    child: Text('data'),
                    duration: _DurationItems.durationLow)
              ],
            )),
            // AnimatedList()
            Expanded(child: AnimatedList(
              itemBuilder: (context, index, animation) {
                return Text('data');
              },
            ))
          ],
        )
        //  _isVisible ? const Placeholder() : null,
        );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        crossFadeState:
            _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: _DurationItems.durationLow);
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
