import 'package:demos/flutter_101/navigate_detail_learn.dart';
import 'package:flutter/material.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigatetoWidgetNormal<bool>(
                  context, const NavigateDetailLearn());
              if (response == true) {
                addSelected(index);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_sharp),
        onPressed: () {},
      ),
    );
  }
}

mixin NavigatorManager {
  void navigatetoWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }

  Future<T?> navigatetoWidgetNormal<T>(
      BuildContext context, Widget widget) async {
    Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) => widget,
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }
}
