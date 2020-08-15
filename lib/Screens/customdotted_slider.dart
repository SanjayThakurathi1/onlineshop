import 'package:flutter/material.dart';

class DottedSlider extends StatefulWidget {
  final List<Widget> children;
  DottedSlider({this.children});
  @override
  _DottedSliderState createState() => _DottedSliderState();
}

class _DottedSliderState extends State<DottedSlider> {
  PageController _pageController = PageController(initialPage: 0);
  int pagedchanged = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 350),
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                pagedchanged = index;
              });
            },
            children: widget.children,
          ),
        ),
        drawdot(pagedchanged)
      ],
    );
  }
}

drawdot(page) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[for (int i = 0; i < 4; i++) dot(page == i)],
  );
}

dot(bool selected) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (selected) ? Colors.red : Colors.black,
        )),
  );
}
