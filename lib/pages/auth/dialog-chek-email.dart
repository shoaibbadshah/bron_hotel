import 'dart:async';


import 'package:flutter/material.dart';

import 'login-and-register-page.dart';

class DialogCheckEmail extends StatefulWidget {
  const DialogCheckEmail({Key? key}) : super(key: key);

  @override
  State<DialogCheckEmail> createState() => _DialogCheckEmailState();
}

class _DialogCheckEmailState extends State<DialogCheckEmail> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      refreshStream.add(true);
      Navigator.of(context).pop(true);
    });
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      content: Container(
        height: 278,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/check-icon.png"),
            SizedBox(height: 20,),
            const Text("Проверьте почту", textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF1A2B47), fontSize: 24, fontWeight: FontWeight.w700),)
          ],
        ),
      ),
    );
  }
}
