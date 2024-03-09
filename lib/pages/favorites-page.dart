

import 'package:flutter/material.dart';

import '../home.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  ScrollController controllerListView = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Избранные", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w600),),
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
            });
          },
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF1A2B47),),
        ),
      ),
      body: ListView(
        controller: controllerListView,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
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

                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, right: 20),
                        child: Icon(Icons.favorite, color: Color(0xFFD80027),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("340 Reviews", style: TextStyle(color: Color(0xFF6A7A84), fontSize: 14, fontWeight: FontWeight.w400),),
                                  Row(
                                    children: [
                                      Text("4.97", style: TextStyle(color: Color(0xFFFA5636), fontSize: 14, fontWeight: FontWeight.w700),),
                                      Icon(Icons.star, color: Color(0xFFFA5636), size: 12,)
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,)
                  ],
                )
            ),
          )
        ],
      ),
    );
  }
}
