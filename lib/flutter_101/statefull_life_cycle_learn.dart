import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

//didChangeDependencies initState gibi ama initStateden sonra çalışır.
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies

    super.didChangeDependencies();
    print('a');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('b');
  }

//sayfadan çıktığında sayfayla olan ilişkiyi kesiyor.navigatorle kullanılıyor
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  //initStateden sonra ekran çizilir(Stateful çizilmeden önce)
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('c');
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Çift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_message),
          // title: _isOdd
          //     ? Text(
          //         'Kelime tek',
          //       )
          //     : Text(
          //         'Kelime çift',
          //       ),
          //short if
          //isOdd tek
          //isEven çift
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
