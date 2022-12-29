import 'package:demos/flutter_202/package/launch_manager.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri url = Uri.parse('https://flutter.dev');

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin, LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
        onPressed: () {
          launchUrl(url);
        },
      ),
      body: Text(''),
    );
  }
}
