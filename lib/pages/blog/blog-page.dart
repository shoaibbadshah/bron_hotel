import 'package:bron_hotel/widgets/follow-screen.dart';
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
      backgroundColor: const Color(0xFFF1F4FB),
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
                onPressed: (){},
                icon: Icon(Icons.notifications_none, color: Color(0xFF1A2B47),)
            ),
          ],
        ),
      ),
      body: ListView(
        controller: controllerListView,
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 175,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                  image: AssetImage("assets/images/blog-imges22.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const Expanded(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BlogPageMobile()));
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A2B47),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(
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
          const SizedBox(height: 30,),
          const Center(
            child: Text(
              "Find out what you could\nearn as a Host",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
            ),
          ),
          const SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFE9E9E9),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hosts in your area earn an average of*",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: const <Widget> [
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
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFE9E9E9),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "They earn",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: const <Widget> [
                       Text(
                        "44",
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
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFE9E9E9),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "They earn",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: const <Widget> [
                       Text(
                        "22",
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
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color(0xFF1A2B47),
            child: const Center(
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color(0xFF1A2B47),
            child: const Center(
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
          const SizedBox(height: 15,),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4.4,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return Container(
                    height: 182,
                    width: 182,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("assets/images/blog-pagev.png"),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  );
                }),

          ),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Bilaton has allowed me to create\nmy own job doing what I love —\ntaking care of guests in our home.",
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/icons/clair.png"),
                    const SizedBox(height: 10,),
                    Text(
                      "Host in Chiang Mai",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.5),
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
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD9D9D9)
                          ),
                          child: Center(
                            child: Icon(Icons.arrow_back_ios_rounded, color: const Color(0xFF1A2B47).withOpacity(0.5),),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 40,),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFD9D9D9)
                      ),
                      child: Center(
                        child: Icon(Icons.arrow_forward_ios_rounded, color: const Color(0xFF1A2B47).withOpacity(0.5),),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 40,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 245,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/blog-img33.png"),
                fit: BoxFit.cover
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Questions about hosting?\nAsk a Superhost.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(
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
          const SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 313,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
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
                    const Text(
                      " BilCover",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w600,
                          fontSize: 30),
                    ),
                  ],
                ),
                const Text(
                  "For Hosts",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w300,
                      fontSize: 30),
                ),
                const Text(
                  "Top-to-bottom protection.\nAlways included, always free.\nOnly on Bilaton.",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w300,
                      fontSize: 14),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.3,
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFF1A2B47) ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(
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
          const SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 223,
            color: const Color(0xFFE9E9E9),
            child: Row(
              children: [
                Image.asset("assets/images/blor-try.png"),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Try hosting on\nBilaton",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      const Text(
                        "Join us. We’ll help you every\nstep of the way.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w300,
                            fontSize: 14),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                            color: const Color(0xFF1A2B47),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
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
          const SizedBox(height: 20,),
          const FollowScreen(),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
