import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.35,
      child: Image.asset(
        'assets/images/login_img.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
