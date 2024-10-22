import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          Image.asset(
            'assets/download.png',
            height: 40,
          ),
          Spacer(),
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.notifications),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
