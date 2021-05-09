import 'package:cesurcampusonline/data/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class CustomButton extends StatefulWidget {

  final Color backgroundColor = CustomColors.darkBlue;
  final Text? title;
  final GestureTapCallback? onPressed;

  CustomButton({Key? key, this.title, this.onPressed}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CustomButtonState();
  }

  class _CustomButtonState extends State<CustomButton>
  with TickerProviderStateMixin {
  bool _isPressed = false, _animatingReveal = false;
  int _state = 0;

  Animation? _animation;
  GlobalKey _globalKey = GlobalKey();
  AnimationController? _controller;

  @override
  void deactivate() {
  reset();
  super.deactivate();
  }

  // @override
  // dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
  return PhysicalModel(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        key: _globalKey,
        height: 40.0,
        child: RaisedButton(
          padding: EdgeInsets.all(0.0),
          color: widget.backgroundColor,
          child: buildButtonChild(),
          onPressed: widget.onPressed,
          onHighlightChanged: (isPressed) {
            setState(() {
              _isPressed = isPressed;
              if (_state == 0) {
                animateButton();
              }
            });
          },
        ),
      ));
  }

  void animateButton() {
    _controller = AnimationController(duration: Duration(milliseconds: 1500), vsync: this);
    _controller!.forward();
    setState(() {
      _state = 1;
    });

    Timer(Duration(milliseconds: 1500), () {
      setState(() {
        _state = 0;
      });
    });

  }

  Widget? buildButtonChild() {
    if (_state == 0) {
      return widget.title;
    } else if (_state == 1) {
      return SizedBox(
        height: 25.0,
        width: 25.0,
        child: CircularProgressIndicator(
          value: null,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      return widget.title;
    }
  }


  void reset() {
    _animatingReveal = false;
    _state = 0;
  }
}