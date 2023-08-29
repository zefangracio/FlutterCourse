import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar(
    {
    super.key,required this.pageTitle,
  });
  final String pageTitle;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  //final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const MyApp();
            },
          ));
        },
      ),
      backgroundColor: Colors.white,
      title:  Text(
        pageTitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 23,
        ),
      ),
    );
  }
}
