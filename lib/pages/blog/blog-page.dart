import 'package:bron_hotel/widgets/follow-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blog-page-mobile.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({Key? key}) : super(key: key);

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  ScrollController controllerListView = ScrollController();
  PageController pageController = PageController(viewportFraction: 0.45, initialPage: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F4FB),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/newlogo.png',
              width: 128,
              height: 39,
            ),
            IconButton(
                onPressed: (){
                  setState(() {

                  });
                },
                icon: Icon(Icons.notifications_none, color: Color(0xFF1A2B47),)
            ),
          ],
        ),
      ),
      body: ListView(
        controller: controllerListView,
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 175,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("assets/images/blog-imges22.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Open your\ndoor to hosting",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BlogPageMobile()));
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF1A2B47),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        "Try hosting",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Center(
            child: Text(
              "Find out what you could\nearn as a Host",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFE9E9E9),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hosts in your area earn an average of*",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "\$968",
                        style: TextStyle(
                            color: Color(0xFFC00202),
                            fontWeight: FontWeight.w500,
                            fontSize: 40),
                      ),
                      Text(
                        " / month",
                        style: TextStyle(
                            color: Color(0xFFC00202),
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFE9E9E9),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "They earn",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "\44",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 40),
                      ),
                      Text(
                        " / night",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFE9E9E9),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "They earn",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "\22",
                        style: TextStyle(
                            color: Color(0xFFC00202),
                            fontWeight: FontWeight.w500,
                            fontSize: 40),
                      ),
                      Text(
                        " / month",
                        style: TextStyle(
                            color: Color(0xFFC00202),
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Color(0xFF1A2B47),
            child: Center(
              child: Text(
                "Tell us about your place",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ),
          Image.asset("assets/images/maps-image.png", fit: BoxFit.cover,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Color(0xFF1A2B47),
            child: Center(
              child: Text(
                "You can host\nanything, anywhere",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: MediaQuery.of(context).size.height / 4.4,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return Container(
                    height: 182,
                    width: 182,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/blog-pagev.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  );
                }),

          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Bilaton has allowed me to create\nmy own job doing what I love —\ntaking care of guests in our home.",
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/clair.png"),
                    SizedBox(height: 10,),
                    Text(
                      "Host in Chiang Mai",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.5),
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                        });
                      },
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9)
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xFF1A2B47).withOpacity(0.5),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 40,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD9D9D9)
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFF1A2B47).withOpacity(0.5),),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 245,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/blog-img33.png"),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Questions about hosting?\nAsk a Superhost.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "Learn more",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 313,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/blog-img44.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("assets/icons/billcover.png"),
                    Text(
                      " BilCover",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w600,
                          fontSize: 30),
                    ),
                  ],
                ),
                Text(
                  "For Hosts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w300,
                      fontSize: 30),
                ),
                Text(
                  "Top-to-bottom protection.\nAlways included, always free.\nOnly on Bilaton.",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w300,
                      fontSize: 14),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.3,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFF1A2B47) ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "Learn more",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 223,
            color: Color(0xFFE9E9E9),
            child: Row(
              children: [
                Image.asset("assets/images/blor-try.png"),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Try hosting on\nBilaton",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      Text(
                        "Join us. We’ll help you every\nstep of the way.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xFF1A2B47),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Text(
                            "Let’s go!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          FollowScreen(),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
