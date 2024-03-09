
import 'package:flutter/material.dart';

class WorkWithAsDetailsPage extends StatefulWidget {
  const WorkWithAsDetailsPage({Key? key}) : super(key: key);

  @override
  State<WorkWithAsDetailsPage> createState() => _WorkWithAsDetailsPageState();
}

class _WorkWithAsDetailsPageState extends State<WorkWithAsDetailsPage> {
  ScrollController controllerListView = ScrollController();
  TextEditingController controllerYouName = TextEditingController();
  TextEditingController controllerYouEmail = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerAboutTou= TextEditingController();
  bool showAbout = false;
  bool readMore = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage(
                "assets/images/background-image-home.png",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          backgroundColor: Color(0xFFF1F4FB),
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/newlogo.png',
                width: 128,
                height: 39,
              ),
              Row(
                children: [
                  Image.asset("assets/icons/reference.png"),
                  IconButton(
                      onPressed: (){
                        setState(() {
                          //Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsPage()));
                        });
                      },
                      icon: Icon(Icons.notifications_none, color: Color(0xFF1A2B47),)
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          controller: controllerListView,
          padding: EdgeInsets.symmetric(vertical: 20),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showAbout = !showAbout;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Справка",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 10,),
                    showAbout
                        ? const Icon(Icons.keyboard_arrow_up, color: Color(0xFF1A2B47),)
                        : const Icon(Icons.keyboard_arrow_down, color: Color(0xFF1A2B47),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(
                "We are hiring\nGraphik designer",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    "Ac lorem vitae euismod.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•"),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacus sit a feugiat ornare nunc tellus pretium.",
                          style: TextStyle(
                              color: Color(0xFF5E6D77),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•"),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacus sit a feugiat ornare nunc tellus pretium.",
                          style: TextStyle(
                              color: Color(0xFF5E6D77),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("•"),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacus sit a feugiat ornare nunc tellus pretium.",
                          style: TextStyle(
                              color: Color(0xFF5E6D77),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              color: Color(0xFFf1f4fb),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Text(
                    "Fill out the form to send your CV",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 15,),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Your name", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 14, fontWeight: FontWeight.w400),),
                          ),
                          SizedBox(height: 5,),
                          TextField(
                            controller: controllerYouName,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                  color: Color(0xFFACB5BE),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                borderSide: BorderSide(color: Color(0xFFACB5BE)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                borderSide: BorderSide(color: Color(0xFFACB5BE)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Your email", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 14, fontWeight: FontWeight.w400),),
                          ),
                          SizedBox(height: 5,),
                          TextField(
                            controller: controllerYouEmail,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              hintText: 'Email',
                              hintStyle: TextStyle(
                                  color: Color(0xFFACB5BE),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                borderSide: BorderSide(color: Color(0xFFACB5BE)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                borderSide: BorderSide(color: Color(0xFFACB5BE)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text("Phone number", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 14, fontWeight: FontWeight.w400),),
                          ),
                          SizedBox(height: 5,),
                          TextField(
                            controller: controllerPhone,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              hintText: 'Phone number',
                              hintStyle: TextStyle(
                                  color: Color(0xFFACB5BE),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                borderSide: BorderSide(color: Color(0xFFACB5BE)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                borderSide: BorderSide(color: Color(0xFFACB5BE)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text("About you", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 14, fontWeight: FontWeight.w400),),
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/icons/uploadCV.png"),
                                  SizedBox(width: 10,),
                                  Text("Upload CV", style: TextStyle(color: Color(0xFF005BFE), fontSize: 16, fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 5,),
                          TextField(
                            controller: controllerAboutTou,
                            maxLines: 15,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              hintText: 'About you',
                              hintStyle: TextStyle(
                                  color: Color(0xFFACB5BE),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              filled: true,
                              fillColor: Colors.transparent,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Color(0xFFACB5BE)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(color: Color(0xFFACB5BE)),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 15,),
                  Column(
                    children: [
                      Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(MediaQuery.of(context).size.width / 2, 42),
                                backgroundColor: const Color(0xFF005BFE),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100))),
                            onPressed: () {},
                            child: const Text(
                              "Send",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
