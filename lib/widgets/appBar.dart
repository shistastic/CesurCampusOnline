import 'package:flutter/material.dart';

class CampusAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.white;
  final Text? title;
  final AppBar appbar = AppBar();
  final List<Widget>? actions;

  /// you can add more fields that meet your needs
  CampusAppBar({Key? key, this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Image.asset(
        'assets/images/logo-koolnova-sin-fondo.png',
        height: this.appbar.preferredSize.height - 10,
      ),
      backgroundColor: backgroundColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      new Size.fromHeight(this.appbar.preferredSize.height);
}