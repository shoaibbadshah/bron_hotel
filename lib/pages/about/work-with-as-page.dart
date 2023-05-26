import 'package:bron_hotel/pages/about/work-with-as-details-page.dart';
import 'package:flutter/material.dart';
import '../../widgets/follow-screen.dart';

class WorkWithUsPage extends StatefulWidget {
  const WorkWithUsPage({Key? key}) : super(key: key);

  @override
  State<WorkWithUsPage> createState() => _WorkWithUsPageState();
}

class _WorkWithUsPageState extends State<WorkWithUsPage> {
  ScrollController controllerListView = ScrollController();

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
          backgroundColor: const Color(0xFFF1F4FB),
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
                  const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.notifications_none, color: Color(0xFF1A2B47),)
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          controller: controllerListView,
          padding: const EdgeInsets.symmetric(vertical: 20),
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
                    const SizedBox(width: 10,),
                    showAbout
                        ? const Icon(Icons.keyboard_arrow_up, color: Color(0xFF1A2B47),)
                        : const Icon(Icons.keyboard_arrow_down, color: Color(0xFF1A2B47),)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkWithAsDetailsPage()));
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      "Work with us",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "We are hiring\nGraphik designer",
                            style: TextStyle(
                                color: Color(0xFF1A2B47),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: buildText("Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor ut aliquam Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor ut aliquam"),
                          ),
                          const SizedBox(height: 15,),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                readMore = !readMore;
                              });
                            },
                            child: Row(
                              children: [
                                const Text(
                                  "Learn more",
                                  style: TextStyle(
                                      color: Color(0xFF005BFE),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(width: 10,),
                                readMore
                                    ? const Icon(Icons.keyboard_arrow_right, color: Color(0xFF005BFE),)
                                    : const Icon(Icons.keyboard_arrow_down, color: Color(0xFF005BFE),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const FollowScreen(),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }

  Text buildText(String text) {
    final lines = readMore ? null : 5;
    return Text(
         text,
      maxLines: lines,
      style: TextStyle(
          color: const Color(0xFF5E6D77),
          fontSize: 15,
           fontWeight: FontWeight.w400,
        overflow: readMore ? TextOverflow.visible: TextOverflow.ellipsis,
      ),
      );
  }

}
