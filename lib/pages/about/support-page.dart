import 'package:bron_hotel/pages/about/about-us-mission.dart';
import 'package:bron_hotel/pages/about/contact-us-page.dart';
import 'package:bron_hotel/pages/about/error404-page.dart';
import 'package:bron_hotel/pages/about/privacy-policy-page.dart';
import 'package:bron_hotel/pages/about/terms-conditions-page.dart';
import 'package:bron_hotel/pages/about/work-with-as-page.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  ScrollController controllerListView = ScrollController();
  ExpandableController controllerExpand = ExpandableController();

  bool showAbout = false;
  bool readMore = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerExpand.addListener(() {
      setState(() {

      });
    });
  }
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
                  IconButton(
                    onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Error404Page()));
                        });
                    },
                      icon: Image.asset("assets/icons/reference.png")
                  ),
                   IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.notifications_none, color: Color(0xFF1A2B47),)
                  ),
                ],
              ),
            ],
          ),
        ),
        body: ListView(
          controller: controllerListView,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                     Text(
                      "Справка",
                      style: TextStyle(
                          color: showAbout ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 10,),
                    showAbout
                        ?  Icon(Icons.keyboard_arrow_up, color : showAbout ? const Color(0xFF005BFE) : const Color(0xFF1A2B47))
                        :  Icon(Icons.keyboard_arrow_down, color: showAbout ? const Color(0xFF005BFE) : const Color(0xFF1A2B47))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            showAbout
             ? buildPopup(context)
              : Container(),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text(
                  "Часто задаваемые вопросы",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: ExpandableTheme(
                    data: const ExpandableThemeData(
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        iconPadding: EdgeInsets.only(right: 10),
                    ),
                    child: ExpandablePanel(
                      controller: controllerExpand,
                      header: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                          child: Text(
                            "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit ?",
                            style: TextStyle(
                                color: controllerExpand.expanded ? const Color(0xFF005BFE) : const Color(0xFF1A2B47).withOpacity(0.75),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      collapsed: Container(),
                      expanded: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                           Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              style: TextStyle(
                                  color: Color(0xFF1A2B47),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                           SizedBox(height: 20,)
                        ],
                      ),
                      builder: (_, collapsed, expanded) {
                        return Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(
                              crossFadePoint: 0),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildPopup(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 33,
                  spreadRadius: -6,
                  offset: const Offset(9, 11),
                  color: const Color(0xFF1A2B47).withOpacity(0.15)
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUsMission()));
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Справка (FAQ)",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Divider(thickness: 1,),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUsPage()));
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "О нас",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Divider(thickness: 1,),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TermsConditionsPage()));
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Awards",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Divider(thickness: 1,),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkWithUsPage()));
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Work with us",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Divider(thickness: 1,),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicyPage()));
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Meet the team",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Divider(thickness: 1,),
              ],
            ),
          );
  }
}
