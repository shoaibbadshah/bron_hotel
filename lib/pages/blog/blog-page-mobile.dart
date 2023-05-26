import 'package:flutter/material.dart';

class BlogPageMobile extends StatefulWidget {
  const BlogPageMobile({Key? key}) : super(key: key);

  @override
  State<BlogPageMobile> createState() => _BlogPageMobileState();
}

class _BlogPageMobileState extends State<BlogPageMobile> {
  @override
  Widget build(BuildContext context) {
    ScrollController controllerListView = ScrollController();

    return Scaffold(
      body: ListView(
        controller: controllerListView,
        children: [
          Image.asset("assets/images/blog-mobil.png", fit: BoxFit.cover,),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Vacharvum e ereq\nsenyakaonoc bnakaran\nqaxaqi",
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontWeight: FontWeight.w500,
                  fontSize: 25),
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(color: const Color(0xFF1A2B47).withOpacity(0.4)),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Hut hosted by Albert",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                    Image.asset("assets/images/avatar-mob.png")
                  ],
                ),
                const SizedBox(height: 10,),
                Divider(color: const Color(0xFF1A2B47).withOpacity(0.4)),
                const SizedBox(height: 10,),
                const Text(
                  "4 guests · 2 bedrooms · 1 bed ·\n2.5 baths",
                  style: TextStyle(
                      color: Color(0xFF5F6B7E),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                const SizedBox(height: 10,),
                Divider(color: const Color(0xFF1A2B47).withOpacity(0.4)),
                const SizedBox(height: 10,),
                const Text(
                  "Have fun with the whole family\nat this stylish place.ascas",
                  style: TextStyle(
                      color: Color(0xFF5F6B7E),
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                const SizedBox(height: 10,),
                Divider(color: const Color(0xFF1A2B47).withOpacity(0.4)),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Pool",
                        style: TextStyle(
                            color: Color(0xFF5F6B7E),
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                    Image.asset("assets/images/vendor-img3.png")
                  ],
                ),
                const SizedBox(height: 10,),
                Divider(color: const Color(0xFF1A2B47).withOpacity(0.4)),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Patio",
                        style: TextStyle(
                            color: Color(0xFF5F6B7E),
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                    Image.asset("assets/icons/patio.png")
                  ],
                ),
                const SizedBox(height: 10,),
                Divider(color: const Color(0xFF1A2B47).withOpacity(0.4)),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Hot tub",
                        style: TextStyle(
                            color: Color(0xFF5F6B7E),
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ),
                    Image.asset("assets/icons/hottub.png")
                  ],
                ),
                const SizedBox(height: 10,),
                Divider(color: const Color(0xFF1A2B47).withOpacity(0.4)),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget> [
                 Text(
                  "Davit Malyan St, Yerevan, Armenia",
                  style: TextStyle(
                      color: Color(0xFF5F6B7E),
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                 SizedBox(height: 10,),
                 Text(
                  "We’ll only share your address with guests who are booked as outlined in our privacy policy.",
                  style: TextStyle(
                      color: Color(0xFF5F6B7E),
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
