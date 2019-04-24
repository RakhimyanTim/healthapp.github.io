import 'package:flutter/material.dart';
import 'dart:math';

import 'package:health_app/pages/home_page.dart';

class SpritePainter extends CustomPainter {
  final Animation<double> _animation;

  SpritePainter(this._animation) : super(repaint: _animation);

  void circle(Canvas canvas, Rect rect, double value) {
    double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    Color color = new Color.fromRGBO(202, 226, 253, opacity);

    double size = rect.width / 1;
    double area = size * size;
    double radius = sqrt(area * value / 3);

    final Paint paint = new Paint()..color = color;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = new Rect.fromLTRB(0.0, 0.0, size.width, size.height);

    for (int wave = 2; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(SpritePainter oldDelegate) {
    return true;
  }
}

class DiscoveryPage extends StatefulWidget {
  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> with SingleTickerProviderStateMixin{

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      vsync: this,
    );
    _startAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.repeat(
      period: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: new AppBar(
          leading: new Icon(HealthApp.back,size: 15.0,),
          title: new Icon(HealthApp.health, color: Colors.blue,size: 40.0,),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: <Widget>[
            new IconButton(icon: new Icon(HealthApp.filter, size: 12.0,), onPressed: () {}),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: new Stack(
        children: <Widget>[
          new Positioned(
            child: _buildText(),
          ),
          new Container(
            child: Center(
              child: _buildPulse(),
            ),
          ),
        ],
      ),

//      new Column(
//        children: <Widget>[
//          Flexible(
//            child: _buildText(),
//          ),
//          Flexible(
//            child: _buildPulse(),
//          ),
//        ],
//      ),
    );
  }

  Widget _buildText() {
    return new ListTile(
      title: new Text(
        'Finding people near you...',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontFamily: 'Gilroy-Regular', fontSize: 16),
      ),
    );
  }
  Widget _buildPulse() {
    return Center(
      child: new CustomPaint(
        painter: new SpritePainter(_controller),
        child: new SizedBox(
          width: 200.0,
          height: 200.0,
        ),
      ),
    );
  }
}

