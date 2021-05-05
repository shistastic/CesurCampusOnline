import 'package:cesurcampusonline/data/constants.dart';
import 'package:flutter/material.dart';

class CampusAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = CustomColors.barsDarkBlue;
  final Text? title;
  final AppBar appbar = AppBar();
  final List<Widget>? actions;

  /// you can add more fields that meet your needs
  CampusAppBar({Key? key, this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      // title: Image.asset(
      //   'assets/images/Cesur-CompleteLogo.png',
      //   height: this.appbar.preferredSize.height +10,
      // ),
      title: Text('Cesur Formación',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: backgroundColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      new Size.fromHeight(this.appbar.preferredSize.height);
}