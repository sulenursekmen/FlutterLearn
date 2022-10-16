import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(
            model: _items[index],
          );
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey,
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: CardHeight().cardHeight,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(children: [
            Expanded(
              child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Padding(
                padding: PaddingUtility().paddingAll,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text(_model.price.toString()),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          price: 3.4,
          title: 'Abstract Art'),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          price: 3.4,
          title: 'Abstract Art2'),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          price: 3.4,
          title: 'Abstract Art3')
    ];
  }
}

class PaddingUtility {
  final paddingBottom = EdgeInsets.only(bottom: 20);
  final paddingAll = const EdgeInsets.all(8.0);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

class CardHeight {
  final double cardHeight = 300;
}

class ProjectImages {
  static const imageCollection = 'assets/my_collection.png';
}
