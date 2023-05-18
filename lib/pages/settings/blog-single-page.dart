import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/color.dart';

class BlogSinglePage extends StatefulWidget {
  const BlogSinglePage({Key? key}) : super(key: key);

  @override
  State<BlogSinglePage> createState() => _BlogSinglePageState();
}

class _BlogSinglePageState extends State<BlogSinglePage> {
  ScrollController controllerListView = ScrollController();
  TextEditingController controllerComment = TextEditingController();
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "22 May 2018",
                          style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontSize: 10,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          "1200 views",
                          style: TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontSize: 10,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/images/blog-images2.png"),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(3 ,5),
                              color: Color(0xFFede2de).withOpacity(0.8)
                            )
                          ]
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
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              style: TextStyle(
                height: 1.8,
                color: Color(0xFF1A2B47),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Add comment",
              style: TextStyle(
                color: Color(0xFF1A2B47),
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF1A2B47),
                    shape: BoxShape.circle
                  ),
                  child: Center(
                    child: Text("S", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    controller: controllerComment,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      hintText: 'Add your comment',
                      hintStyle: TextStyle(
                          color: Color(0xFFACB5BE),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                      filled: true,
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(color: Color(0xFF1A2B47).withOpacity(0.2), thickness: 4,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Color(0xFF3E68AD),
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Text("K", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text("Kostya X", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 14, fontWeight: FontWeight.w600),),
                      ],
                    ),
                    Text("3 years ago", style: TextStyle(color: Color(0xFFC4C4C4), fontSize: 10, fontWeight: FontWeight.w400),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    children: [
                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
                        style: TextStyle(
                          height: 1.78,
                            color: Color(0xFF1A2B47),
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Image.asset("assets/icons/likes.png"),
                          SizedBox(width: 10,),
                          Text(
                            "Likes 12",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          SizedBox(width: 40,),

                          Text(
                            "Reply",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(color: Color(0xFFD9D9D9).withOpacity(0.5), thickness: 2,),
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
