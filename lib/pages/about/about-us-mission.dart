import 'package:bron_hotel/pages/about/work-with-as-page.dart';
import 'package:flutter/material.dart';
import '../../widgets/follow-screen.dart';

class AboutUsMission extends StatefulWidget {
  const AboutUsMission({Key? key}) : super(key: key);

  @override
  State<AboutUsMission> createState() => _AboutUsMissionState();
}

class _AboutUsMissionState extends State<AboutUsMission> {
  ScrollController controllerListView = ScrollController();
  bool showAbout = false;
  bool showHotels = false;
  bool showTours = false;
  bool showFlights = false;
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
                  IconButton(
                      onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const WorkWithUsPage()));
                        });
                      },
                      icon: Image.asset("assets/icons/reference.png")
                  ),
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
              showAbout
                  ? buildMission(context)
                  : Container(),
            const SizedBox(height: 15,),
            showHotels
              ? buildHotels(context)
              : Container(),
            const SizedBox(height: 15,),
            showTours
                ? buildTours(context)
                : Container(),
            const SizedBox(height: 15,),
            showFlights
                ? buildFlights(context)
                : Container(),
            const SizedBox(height: 15,),

            // Hotels
            GestureDetector(
              onTap: (){
                setState(() {
                  showHotels = !showHotels;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4.5,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/images/stays.png", color:  showHotels ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),),
                          const SizedBox(height: 5,),
                          Text(
                            "Hotels",
                            style: TextStyle(
                                decorationThickness: 2,
                                color: showHotels ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            height: 2,
                            width: 70,
                            color: showHotels ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),
                          )
                        ],
                      ),
                      const Text(
                        "Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decorationThickness: 2,
                            color: Color(0xFF1A2B47),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),

            // Tours
            GestureDetector(
              onTap: (){
                setState(() {
                  showTours = !showTours;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4.5,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/tours.png', color: showTours ? const Color(0xFF005BFE) : const Color(0xFF1A2B47)),
                          const SizedBox(height: 5,),
                          Text(
                            "Tours",
                            style: TextStyle(
                                decorationThickness: 2,
                                color: showTours ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            height: 2,
                            width: 70,
                            color: showTours ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),
                          )
                        ],
                      ),
                      const Text(
                        "Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decorationThickness: 2,
                            color: Color(0xFF1A2B47),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),

            //Flights
            GestureDetector(
              onTap: (){
                setState(() {
                  showFlights = !showFlights;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4.5,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/flights.png', color: showFlights ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),),
                          const SizedBox(height: 5,),
                          Text(
                            "Flights",
                            style: TextStyle(
                                decorationThickness: 2,
                                color: showFlights ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            height: 2,
                            width: 70,
                            color: showFlights ? const Color(0xFF005BFE) : const Color(0xFF1A2B47),
                          )
                        ],
                      ),
                      const Text(
                        "Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decorationThickness: 2,
                            color: Color(0xFF1A2B47),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            const FollowScreen(),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

  Padding buildHotels(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            "Hotels",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 162,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/about1.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/about2.png"),
                              fit: BoxFit.cover
                            )
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/about3.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Libero nunc consequat interdum varius sit. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Amet tellus cras adipiscing enim eu turpis egestas. Vel elit scelerisque mauris pellentesque pulvinar pellentesque. Metus vulputate eu scelerisque felis imperdiet. Justo donec enim diam vulputate ut pharetra sit amet. Facilisis magna etiam tempor orci eu lobortis elementum. Ut pharetra sit amet aliquam. ",
            style: TextStyle(
                height: 2,
                color: Color(0xFF5E6D77),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }

  Padding buildTours(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            "Tours",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 162,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/about1.png"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/about2.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/about3.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Libero nunc consequat interdum varius sit. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Amet tellus cras adipiscing enim eu turpis egestas. Vel elit scelerisque mauris pellentesque pulvinar pellentesque. Metus vulputate eu scelerisque felis imperdiet. Justo donec enim diam vulputate ut pharetra sit amet. Facilisis magna etiam tempor orci eu lobortis elementum. Ut pharetra sit amet aliquam. ",
            style: TextStyle(
                height: 2,
                color: Color(0xFF5E6D77),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }

  Padding buildFlights(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text(
            "Flights",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 162,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/about1.png"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/about2.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/about3.png"),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Libero nunc consequat interdum varius sit. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Amet tellus cras adipiscing enim eu turpis egestas. Vel elit scelerisque mauris pellentesque pulvinar pellentesque. Metus vulputate eu scelerisque felis imperdiet. Justo donec enim diam vulputate ut pharetra sit amet. Facilisis magna etiam tempor orci eu lobortis elementum. Ut pharetra sit amet aliquam. ",
            style: TextStyle(
                height: 2,
                color: Color(0xFF5E6D77),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 15,),
        ],
      ),
    );
  }

  Padding buildMission(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    "Our mission",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/about-image.png"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Libero nunc consequat interdum varius sit. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mauris pellentesque pulvinar pellentesque habitant morbi tristique. Amet tellus cras adipiscing enim eu turpis egestas. Vel elit scelerisque mauris pellentesque pulvinar pellentesque. Metus vulputate eu scelerisque felis imperdiet. Justo donec enim diam vulputate ut pharetra sit amet. Facilisis magna etiam tempor orci eu lobortis elementum. Ut pharetra sit amet aliquam. ",
                    style: TextStyle(
                      height: 2,
                        color: Color(0xFF5E6D77),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 15,),
                ],
              ),
            );
  }

}
