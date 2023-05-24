import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HousingOptions extends StatefulWidget {
  const HousingOptions({Key? key}) : super(key: key);

  @override
  State<HousingOptions> createState() => _HousingOptionsState();
}

class _HousingOptionsState extends State<HousingOptions> {
  ScrollController controllerListViewSheet = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage("assets/images/maps-hotel.png"),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
          ),
          backgroundColor: Color(0xFF1A2B47),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Тунис",
                style: TextStyle(
                  color: Color(0xFFF1F4FB),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "23 - 30 июля , 1 чел.",
                style: TextStyle(
                  color: Color(0xFFA0AFCC),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: (){
                  setState(() {

                  });
                },
                icon: Image.asset("assets/icons/filters.png")
            )
          ],
        ),
        body: Container(),
        bottomNavigationBar: GestureDetector(
          onTap: (){
            setState(() {
              _showModalHotels(context);
            });
          },
          child: Container(
            height: 78,
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
            ),
            child: Column(
              children: [
                Container(
                  height: 4,
                  width: 66,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
                SizedBox(height: 20,),
                const Text(
                  "201 вариантов жилья",
                  style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _showModalHotels(context){
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.7,
                    maxChildSize: 1,
                    minChildSize: 0.25,
                    builder: (BuildContext context, ScrollController scrollController) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          controller: controllerListViewSheet,
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          scrollDirection: Axis.vertical,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: GestureDetector(
                                onTap: (){

                                },
                                child: Container(
                                  height: 4,
                                  width: 66,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(height: 20,),
                                const Text(
                                  "201 вариантов жилья",
                                  style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20,),
                            Column(
                              children: List.generate(5, (index) =>
                                  Column(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context).size.height / 4.1,
                                        width: MediaQuery.of(context).size.width,
                                        alignment: Alignment.topRight,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("assets/images/favorites-image.png"),
                                                fit: BoxFit.fill
                                            )
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  flex: 3,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text("Hotel Stanford", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 18, fontWeight: FontWeight.w500),),
                                                          SizedBox(width: 5,),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on, color: Color(0xFF1A2B47),),
                                                              Text("Tunis", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 12, fontWeight: FontWeight.w400),),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Text("340 Reviews", style: TextStyle(color: Color(0xFF6A7A84), fontSize: 14, fontWeight: FontWeight.w400),),
                                                      SizedBox(height: 5,),
                                                      Row(
                                                        children: [
                                                          RichText(
                                                            text: TextSpan(
                                                              text: '100 \$ /',
                                                              style: TextStyle(color: Color(0xFF5E6D77), fontSize: 16, fontWeight: FontWeight.w500),
                                                              children: const <TextSpan>[
                                                                TextSpan(text: ' ночь ', style: TextStyle(color: Color(0xFF5E6D77), fontSize: 12, fontWeight: FontWeight.w500)),
                                                              ],
                                                            ),
                                                          ),
                                                          Icon(Icons.circle, size: 5, color: Color(0xFF5E6D77),),
                                                          Text(" 6 гостей , 3 спален", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 14, fontWeight: FontWeight.w500),),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      Text("4.97", style: TextStyle(color: Color(0xFFFA5636), fontSize: 14, fontWeight: FontWeight.w700),),
                                                      Icon(Icons.star, color: Color(0xFFFA5636), size: 12,)
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                RichText(
                                                  text: TextSpan(
                                                    text: 'Всего ',
                                                    style: TextStyle(color: Color(0xFF5E6D77), fontSize: 16, fontWeight: FontWeight.w400),
                                                    children: const <TextSpan>[
                                                      TextSpan(text: ' 1320\$', style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w600)),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10,)
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            )
                          ],
                        ),
                      );
                    });
              });
        });
  }
}
