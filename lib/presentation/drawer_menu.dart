import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_dashboard/presentation/resources/color_manager.dart';
import 'package:git_dashboard/presentation/resources/values_manager.dart';

import '../data/html_data.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.primaryDarkGrey,
      child: Column(children: [
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: AppSize.s32,
                child: Icon(
                  Icons.verified_user_outlined,
                  size: AppSize.s32,
                ),
              ),
              const SizedBox(height: AppMargin.m8),
              Text(
                'My git hub repo',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: drawerItems.length,
            itemBuilder: (context, i) => ExpansionTile(
                  title: Text(
                    drawerItems[i].keys.first,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
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
                              tileColor: AppColor.neutralDarkBlue,
                              title: Text(
                                item.keys.first.toString(),
                                style: Theme.of(context).textTheme.titleSmall,
                              ))),
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
