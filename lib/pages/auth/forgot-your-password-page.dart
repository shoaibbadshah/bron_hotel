import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotYourPasswordPage extends StatelessWidget {
  const ForgotYourPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage(
                "assets/images/background-image-home.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/newlogo.png',
                width: 128,
                height: 39,
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Forgot Your Password?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800, fontSize: 22),),
            Text("Not to worry, we got you!\nLet’s get you a new password", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),),
            Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width / 1.5, 52),
                      backgroundColor: const Color(0xFF1A2B47),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  onPressed: () {
                  },
                  child: const Text(
                    "Go to change password",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
