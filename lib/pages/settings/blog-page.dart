import 'dart:ui';

import 'package:bron_hotel/pages/settings/blog-single-page.dart';
import 'package:bron_hotel/widgets/expandable-text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  ScrollController controllerListView = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4FB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons/blog-icon.png"),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.notifications_none, color: Color(0xFF1A2B47), size: 31,)
                )
              ],
            ),
            Divider()
          ],
        ),
      ),
      body: ListView(
        controller: controllerListView,
        children: [
          Column(
            children: List.generate(3, (index) =>
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lorem ipsum dolor sit amet",
                            style: TextStyle(
                                color: Color(0xFF1A2B47),
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "22 May 2018",
                            style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 10,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(height: 10,),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BlogSinglePage()));
                              });
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("assets/images/blog-images1.png"),
                                      SizedBox(width: 10,),
                                      Expanded(
                                        child: ExpandableText(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis ",
                                          trimLines: 5,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Comments 22",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/icons/likes.png"),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Likes 500",
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/icons/shares.png"),
                                  SizedBox(width: 10,),
                                  Text(
                                    "Share",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Page 1 of 200",
                  style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width / 2.5, 40),
                      backgroundColor: const Color(0xFF1A2B47).withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: const Text(
                    "Previous",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  )),
              SizedBox(width: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width / 2.5, 40),
                      backgroundColor: const Color(0xFF1A2B47),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  )),
            ],
          ),
          SizedBox(height: 20,),
          buildFollow(context),
          SizedBox(height: 20,),
        ],
      ),
    );
  }

  Container buildFollow(BuildContext context) {
    return Container(
      height: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bottomInst.png"),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.8)),
                child: Column(
                  children: [
                    Image.asset("assets/images/instagramm.png"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "@bilatontravel",
                      style: TextStyle(
                          color: UtilColor.getColorFromHex("5E6D77"),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 33,
                      width: MediaQuery.of(context).size.width / 3,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          color: UtilColor.getColorFromHex("FA5636"),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Follow",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
