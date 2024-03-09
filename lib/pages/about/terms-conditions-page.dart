
import 'package:flutter/material.dart';

class TermsConditionsPage extends StatefulWidget {
  const TermsConditionsPage({Key? key}) : super(key: key);

  @override
  State<TermsConditionsPage> createState() => _TermsConditionsPageState();
}

class _TermsConditionsPageState extends State<TermsConditionsPage> {
  ScrollController controllerListView = ScrollController();

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
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Terms and conditions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 20,),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Libero nunc consequat interdum varius sit. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Amet tellus cras adipiscing enim eu turpis egestas. Vel elit scelerisque mauris pellentesque pulvinar pellentesque. Metus vulputate eu scelerisque felis imperdiet. Justo donec enim diam vulputate ut pharetra sit amet. Facilisis magna etiam tempor orci eu lobortis elementum. Ut pharetra sit amet aliquam.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Libero nunc consequat interdum varius sit. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Amet tellus cras adipiscing enim eu turpis egestas. Vel elit scelerisque ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.8,
                      color: Color(0xFF5E6D77),
                      fontSize: 16,
                      fontWeight: FontWeight.w300),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
