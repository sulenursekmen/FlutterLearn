import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarLearn extends StatelessWidget {
  const AppBarLearn({super.key});
  final String _title = 'Welcome Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actionsIconTheme: IconThemeData(color: Colors.yellow),
        //sayfada back butonu gelmesin
        // automaticallyImplyLeading: false,
        ///////////////////////
        // toolbarTextStyle: TextStyle(color: Colors.yellow),
        leading: InkWell(child: Icon(Icons.chevron_left), onTap: (() {})),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          // const Center(
          //   child: CircularProgressIndicator(),
          // ), loading
        ],
      ),
    );
  }
}
