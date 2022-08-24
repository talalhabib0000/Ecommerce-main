import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: Colors.black),
            )),
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Navigator.pushNamed(context, '/wishlist');
              })
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
