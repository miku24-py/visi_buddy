import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(home: new CircleWidget()));

class CircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget bigCircle = new Container(
      width: 300.0,
      height: 300.0,
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );

    return new Material(
      color: Colors.black,
      child: new Center(
        child: new Stack(
          children: <Widget>[
            bigCircle,
            new Positioned(
                child: new CircleButton(onTap: () => print("Recognize voice"), iconData: Icons.mic),
                top: 125.0,
                left: 125.0,
            ),
            new Positioned(
                child: new CircleButton(onTap: () => print("Location"), iconData: Icons.pin_drop, size: 15.0),
                top: 10.0,
                left: 125.0,
            ),
            new Positioned(
                child: new CircleButton(onTap: () => print("Menu reading"), iconData: Icons.restaurant_menu, size: 18.0),
                top: 125.0,
                right: 10.0,
            ),
            new Positioned(
                child: new CircleButton(onTap: () => print("Object detection"), iconData: Icons.camera_alt, size: 15.0),
                bottom: 10.0,
                left: 125.0,
            ),
            new Positioned(
                child: new CircleButton(onTap: () => print(""), iconData: Icons.assistant, size: 15.0),
                top: 125.0,
                left: 10.0,
            )
          ],
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;

  const CircleButton({Key key, this.onTap, this.iconData, double size}): super(key:key);

  @override
  Widget build(BuildContext context) {
    double circleSize = 50.0;

    return new InkResponse(
      onTap: onTap,
      child: new Container(
        width: circleSize,
        height: circleSize,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: new Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}