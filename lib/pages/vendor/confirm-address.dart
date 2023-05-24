import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmAddress extends StatefulWidget {
  const ConfirmAddress({Key? key}) : super(key: key);

  @override
  State<ConfirmAddress> createState() => _ConfirmAddressState();
}

class _ConfirmAddressState extends State<ConfirmAddress> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage(
                "assets/images/confirm-img.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: Icon(Icons.arrow_back_ios, color: Color(0xFF1A2B47),),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Confirm your address",
            style: TextStyle(
              color: Color(0xFF1A2B47),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xFF8C95A3))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: buildText("Street" , "3 Zakaria Kanakertsi Street"),
                  ),
                  Divider(thickness: 1, color: Color(0xFF8C95A3),),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: buildText("" , "Apt, suite, etc. (Optional)"),
                  ),
                  Divider(thickness: 1, color: Color(0xFF8C95A3),),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: buildText("City" , "Yerevan"),
                  ),
                  Divider(thickness: 1, color: Color(0xFF8C95A3),),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: buildText("State(Optional)" , "Yerevan"),
                  ),
                  Divider(thickness: 1, color: Color(0xFF8C95A3),),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: buildText("" , "Zip code (Optional)"),
                  ),
                  Divider(thickness: 1, color: Color(0xFF8C95A3),),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: buildText("Coutry / Region" , "Armenia - AM"),
                  ),
                  SizedBox(height: 10,)

                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Show your specific location",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Make it more clear to guests\nwhere your place is located.\nWe'll never share your address\nuntil a guest is booked",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Transform.scale(
                      scale: 0.9,
                      child: CupertinoSwitch(
                        activeColor: Color(0xFF005BFE),
                        trackColor: Color(0xFF1A2B47).withOpacity(0.25),
                        value: _switchValue,
                        onChanged: (value) {
                          setState(() {
                            _switchValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                  image: AssetImage("assets/images/maps-hotel.png"),
                  fit: BoxFit.cover
                )
              ),
              child: Center(
                child: Image.asset("assets/icons/maps-home.png"),
              ),
            )

          ],
        ),
        bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.symmetric(horizontal: BorderSide(color: Color(0xFFD9D9D9)))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {

                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: 33,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF1A2B47),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Looks good",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }

  Column buildText(String label, String name) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.6),
                          fontSize: 8,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      name,
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5,),
                  ],
                );
  }
}
