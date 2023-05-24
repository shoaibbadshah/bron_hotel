import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorBoardYouPlace extends StatefulWidget {
  const VendorBoardYouPlace({Key? key}) : super(key: key);

  @override
  State<VendorBoardYouPlace> createState() => _VendorBoardYouPlaceState();
}

class _VendorBoardYouPlaceState extends State<VendorBoardYouPlace> {
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
                "Which of these best\ndescribes your place?",
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
                          "Apartment",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "A home that may stand-alone or have shared walls.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1A2B47).withOpacity(0.5),
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
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
