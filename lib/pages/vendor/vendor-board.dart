
import 'package:bron_hotel/pages/vendor/vendor-board-bedrooms.dart';
import 'package:bron_hotel/pages/vendor/vendor-board-location-spot.dart';
import 'package:bron_hotel/pages/vendor/vendor-board-location.dart';
import 'package:bron_hotel/pages/vendor/vendor-board-offer.dart';
import 'package:bron_hotel/pages/vendor/vendor-board-quests.dart';
import 'package:bron_hotel/pages/vendor/vendor-board-you-host.dart';
import 'package:bron_hotel/pages/vendor/vendor-board-you-plase.dart';

import 'package:flutter/material.dart';

class VendorBoard extends StatefulWidget {
  const VendorBoard({Key? key}) : super(key: key);

  @override
  State<VendorBoard> createState() => _VendorBoardState();
}

class _VendorBoardState extends State<VendorBoard> {
  PageController pageController = PageController(viewportFraction: 0.99, initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xFF1A2B47),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(17.5)
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/vendor-appbar.png"),
                      Image.asset("assets/images/vendor-appbar.png"),
                      Image.asset("assets/images/vendor-appbar.png")
                    ],
                  ),
                  SizedBox(width: 5,),
                  Text(
                    "Ask a Superhost",
                    style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Save and exit",
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            Image.asset("assets/icons/question-vendor.png")
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: pageController,
                 children: [
                   VendorBoardYouHost(),
                   VendorBoardYouPlace(),
                   VendorBoardQuests(),
                   VendorBoardLocation(),
                   VendorBoardLocationSpot(),
                   VendorBoardBedrooms(),
                   VendorBoardOffer(),

                 ],
                ),
          ),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: (){
                  setState(() {
                    pageController.previousPage(duration: Duration(microseconds: 500), curve: Curves.easeInOut );

                  });
                },
                child: Text(
                  "Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                )
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  pageController.nextPage(duration: Duration(microseconds: 500), curve: Curves.easeInOut );
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                height: 33,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Color(0xFF1A2B47),
                    borderRadius: BorderRadius.circular(10),

                ),
                child: Center(
                  child: Text(
                    "Next",
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
    );
  }

}
