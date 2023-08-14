import 'package:flutter/material.dart';

double getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

class TopRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double borderRadius = 15;
    Path path = Path();
    path.lineTo(0, size.height - 15 - borderRadius);
    path.arcToPoint(
      Offset(borderRadius, size.height - 15),
      radius: Radius.circular(borderRadius +
          5), // added 5 for alignment correction in border radius
      clockwise: false,
    );
    path.lineTo(size.width - borderRadius - 8, size.height);
    path.arcToPoint(
      Offset(size.width - 8, size.height - borderRadius),
      radius: Radius.circular(borderRadius),
      clockwise: false,
    );

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class AuthMidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 40);
    path.lineTo(size.width * 0.19 - 5, 60);
    path.quadraticBezierTo(size.width * 0.19 + 5, 60, size.width * 0.19, 40);
    path.lineTo(size.width * 0.19 - 5, 15);
    path.quadraticBezierTo(size.width * 0.19 - 8, 0, size.width * 0.19, 0);
    path.lineTo(size.width, 60);
    path.lineTo(size.width, 175);
    path.lineTo(size.width * 0.45, 130);
    path.quadraticBezierTo(
        size.width * 0.45 - 10, 130, size.width * 0.45 - 2, 150);
    path.lineTo(size.width * 0.45 + 2, 175);
    path.quadraticBezierTo(
        size.width * 0.45 + 5, 205, size.width * 0.45 - 10, 190);
    path.lineTo(0, 145);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class HomeMidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.37);
    path.lineTo(size.width * 0.6, size.height * 0.68);
    path.lineTo(size.width * 0.6, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// path.quadraticBezierTo(size.width + 5, size.height * 0.37 + 30,
// size.width - 15, size.height * 0.37 + 5);

class HomeLastClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, size.height * 0.485);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ExchangeCurrencyMidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.265);
    path.lineTo(0, size.height * 0.705);
    path.lineTo(0, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ExchangeCurrencyLastClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.295);
    path.lineTo(0, size.height * 0.735);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
