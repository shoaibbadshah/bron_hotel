import 'package:bron_hotel/pages/vendor/vendor-board.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorStartPage extends StatefulWidget {
  const VendorStartPage({Key? key}) : super(key: key);

  @override
  State<VendorStartPage> createState() => _VendorStartPageState();
}

class _VendorStartPageState extends State<VendorStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/vendor-img.png"),
                fit: BoxFit.cover
              )
            ),
          ),
          const SizedBox(height: 40,),
          Text(
              "Become a Host in\n10 easy steps",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF1A2B47),
                fontSize: 26,
                fontWeight: FontWeight.w700
              ),
          ),
          const SizedBox(height: 40,),
          Text(
            "Join us. We'll help you every\nstep of the way.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF1A2B47).withOpacity(0.5),
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
          const SizedBox(height: 40,),
          Column(
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => VendorBoard()));
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: Color(0xFF1A2B47),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text(
                      "Let’s go!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.symmetric(horizontal: BorderSide(color: Color(0xFFD9D9D9)))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 35,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17.5),
                border: Border.all(color: Color(0xFF1A2B47))
              ),
              child: Center(
                child: Text(
                  "Exit",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
