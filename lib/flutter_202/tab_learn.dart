import 'package:demos/flutter_101/list_tile_learn.dart';
import 'package:demos/flutter_101/image_learn.dart';
import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
    // with TickerProviderStateMixin ile sarıp vsync: this ver.
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child: const Icon(Icons.home),
          onPressed: () {
            _tabController.animateTo((_MyTabViews.home.index));
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          color: Colors.black,
          child: TabBar(
            controller: _tabController,
            tabs:
                _MyTabViews.values.map((e) => Tab(text: '${e.name}')).toList(),
            // const [
            //   Tab(
            //     text: 'Page1',
            //   ),
            //   Tab(
            //     text: 'Page2',
            //   ),
            // ]
          ),
        ),
        appBar: AppBar(
          title: const Text('Tabbar Learn'),
          bottom: _myTabView(),
        ),
        body: _tabbarView(tabController: _tabController),
      ),
    );
  }

  TabBar _myTabView() {
    return TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.lime,
        isScrollable: true,
        //sıkıştırır
        onTap: (int index) {},
        // controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: '${e.name}')).toList());
  }
}

class _tabbarView extends StatelessWidget {
  const _tabbarView({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        //yana geçiş kapandı
        controller: _tabController,
        children: [
          ImageLearnView(),
          ListTileLearn(),
          ImageLearnView(),
          ListTileLearn(),
        ]);
  }
}

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
