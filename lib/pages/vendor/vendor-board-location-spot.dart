
import 'package:flutter/material.dart';

class VendorBoardLocationSpot extends StatefulWidget {
  const VendorBoardLocationSpot({Key? key}) : super(key: key);

  @override
  State<VendorBoardLocationSpot> createState() => _VendorBoardLocationSpotState();
}

class _VendorBoardLocationSpotState extends State<VendorBoardLocationSpot> {
  TextEditingController controllerLocation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                "Is the pin in the\nright spot?",
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
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/maps-hotel.png"),
                  fit: BoxFit.cover
              )
          ),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: controllerLocation,
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Inchvor verjnakan hasce',
                  hintStyle: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  prefixIcon: Icon(Icons.location_on, color: Color(0xFF1A2B47),),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Color(0xFF1A2B47)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Color(0xFF1A2B47)),
                  ),
                ),
              )
            ],
          ),
        )

      ],
    );
  }
}
