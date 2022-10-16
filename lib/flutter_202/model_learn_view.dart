import 'package:demos/flutter_202/model_learn.dart';
import 'package:flutter/material.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'a');

  @override
  void initState() {
    super.initState();
    final user1 = PostModel2();
    //PostModel2()..userId=1, şeklinde de değeri verebilirsin...textfield vs
    user1.body = 'hello';

    final user2 = PostModel1(1, 2, 'a', 'b');

    final user3 = PostModel3();

    final user4 = PostModel4(userId: 1, id: 2, title: 'title', body: 'body');
    //localde bu tarz kullan
    final user5 = PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
    user5.userId;
    //get ile getirdik

    //user5=user6

    final user7 = PostModel7();
    //service'ten data cekerken en mantıklı yöntem bu 8 olan
    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'sample');
            user9.updateBody('sample data');
            //null da gelse koruyacak
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.body ?? 'Not has any data'),
      ),
    );
  }
}
