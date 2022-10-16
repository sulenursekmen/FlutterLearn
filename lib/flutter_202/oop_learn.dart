import 'dart:io';

import 'package:demos/flutter_202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

//soyut sınıf
abstract class IFileDownload {
  bool? downloadItem(FileItem? fileItem);
  void toShare(String path) async {
    // ignore: deprecated_member_use
    await launch(path);
  }
}

class FileDownload implements IFileDownload {
  @override
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print('a');
    return null;
  }

  @override
  Future<void> toShare(String path) async {
    // ignore: deprecated_member_use
    await launch("sms:$path");
  }
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}
