import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/html_data.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                child: Icon(Icons.verified_user_outlined),
              ),
              Text('My git hub repo'),
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: drawerItems.length,
            itemBuilder: (context, i) => ExpansionTile(
                  title: Text(drawerItems[i].keys.first),
                  children: [
                    for (var item in drawerItems[i][drawerItems[i].keys.first])
                      GestureDetector(
                          onTap: () {
                            context
                                .read(dataChangeNotifier.notifier)
                                .change(item[item.keys.first]);
                            Navigator.pop(context);
                          },
                          child: ListTile(
                              title: Text(item.keys.first.toString()))),
                  ],
                )),
      ]),
    );
  }
}

class MyString extends StateNotifier<String> {
  MyString() : super('');

  void change(String text) => state = text;
}

final dataChangeNotifier = StateNotifierProvider<MyString, String>((ref) {
  return MyString();
});
