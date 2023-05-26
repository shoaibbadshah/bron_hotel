import 'package:bron_hotel/pages/auth/forgot-your-password-page.dart';
import 'package:flutter/material.dart';

class DialogCheckNewPass extends StatefulWidget {
  const DialogCheckNewPass({Key? key}) : super(key: key);

  @override
  State<DialogCheckNewPass> createState() => _DialogCheckNewPassState();
}

class _DialogCheckNewPassState extends State<DialogCheckNewPass> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      content: Container(
        height: 278,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/person-icon.png"),
            const SizedBox(height: 20,),
            const Text("Александр, ваш пароль удачно изменен", textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF1A2B47), fontSize: 14, fontWeight: FontWeight.w500),),
            const SizedBox(height: 20,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 40),
                    backgroundColor: const Color(0xFF005BFE),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                onPressed: () {
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotYourPasswordPage()));
                  });
                },
                child: const Text(
                  "Перейти на главную",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
