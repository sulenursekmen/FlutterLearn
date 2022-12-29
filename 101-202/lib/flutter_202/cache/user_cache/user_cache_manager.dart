// import 'dart:convert';

// import 'package:demos/flutter_202/cache/shared_manager.dart';

// class UserCacheManager {
//   final SharedManager sharedManager;

//   UserCacheManager(this.sharedManager);
//   void saveItems(List<User> items) {
//     //Bunu compute ile de yapabilirsin.
//     final _items = items.map((element) => jsonEncode(element)).toList();
//     sharedManager.saveStringItems(SharedKeys.users, _items);
//   }

//   List<User>? getItems() {
//     //Bunu compute ile de yapabilirsin.
//     final itemsString = sharedManager.getStrings(SharedKeys.users);
//     if (itemsString?.isNotEmpty ?? false) {
//       return itemsString!.map((element) {
//         final jsonObject = jsonDecode(element);
//         return User('name', 'description', 'b');
//       }).toList();
//     }
//     return null;
//   }
// }
