import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorBoardQuests extends StatefulWidget {
  const VendorBoardQuests({Key? key}) : super(key: key);

  @override
  State<VendorBoardQuests> createState() => _VendorBoardQuestsState();
}

class _VendorBoardQuestsState extends State<VendorBoardQuests> {
  int selectCard = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF1A2B47),
          child:  Column(
            children: [
              SizedBox(height: 20,),
              Image.asset("assets/icons/pilot-vendor.png"),
              SizedBox(height: 20,),
              Text(
                "What kind of space\nwill guests have?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
        SizedBox(height: 15,),
        Column(
          children: List.generate(5, (index) =>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectCard = index;
                    });
                  },
                  child: Container(
                    height: 82,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                        color: selectCard == index ? Color(0xFF1A2B47).withOpacity(0.1) : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFF1A2B47))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "An entire place",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ),
        ),
      ],
    );
  }
}
