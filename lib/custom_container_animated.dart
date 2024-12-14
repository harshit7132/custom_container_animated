library custom_container_animated;

import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  final double width;
  final double height;
  final Color color;
  final Alignment alignment;
  final Duration duration;
  final BorderRadius borderRadius;
  final BoxShadow boxShadow;
  final Curve curve;
  final String title;

  CustomAnimatedContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    required this.alignment,
    this.title = 'title here',
    this.duration = const Duration(seconds: 1),
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.boxShadow = const BoxShadow(color: Colors.black, blurRadius: 10),
    this.curve = Curves.easeInOut,
  }) : super(key: key);

  @override
  _CustomAnimatedContainerState createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: widget.width,
      height: widget.height,
      color: widget.color,
      alignment: widget.alignment,
      duration: widget.duration,
      curve: widget.curve,
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius,
        boxShadow: [widget.boxShadow],
      ),
      child: Center(
        child: Text(
          widget.title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
