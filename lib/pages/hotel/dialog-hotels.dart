
import 'package:flutter/material.dart';

class DialogHotels extends StatefulWidget {
  const DialogHotels({Key? key}) : super(key: key);

  @override
  State<DialogHotels> createState() => _DialogHotelsState();
}

class _DialogHotelsState extends State<DialogHotels> {
  static List images = [
    "assets/images/hotels-img3.png",
    "assets/images/hotels-img2.png",
    "assets/images/hotels-img1.png",
    "assets/images/hotels-img3.png",
    "assets/images/hotels-img2.png",
    "assets/images/hotels-img1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      content: Container(
        width: MediaQuery.of(context).size.width,
        height: 700,
        child: ListView(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.clear),
                )
            ),
            Container(
              height: 162,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("assets/images/hotels-img3.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/hotels-img2.png"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/hotels-img2.png"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 186,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/hotels-img1.png"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(
                    height: 186,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/hotels-img1.png"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 5,),
            Container(
              height: 162,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("assets/images/hotels-img3.png"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/hotels-img2.png"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("assets/images/hotels-img2.png"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
  
}
