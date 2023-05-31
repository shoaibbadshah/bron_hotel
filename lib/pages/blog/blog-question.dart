import 'package:flutter/material.dart';

class BlogQuestion extends StatefulWidget {
  const BlogQuestion({Key? key}) : super(key: key);

  @override
  State<BlogQuestion> createState() => _BlogQuestionState();
}

class _BlogQuestionState extends State<BlogQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/blog-img1.png"),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "Save and exit",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Image.asset("assets/icons/question-vendor.png")
                  ],
                ),
                const SizedBox(height: 50,),
                Column(
                  children: [
                    Image.asset("assets/icons/pilot-vendor.png"),
                    const SizedBox(height: 20,),
                    const Text(
                      "Now, for the fun\npart-set your price",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(89),
                          border: Border.all(color: Colors.white)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget> [
                           Icon(Icons.play_arrow, color: Colors.white,),
                           SizedBox(width: 8,),
                           Text(
                            "Watch full video",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "How are you hosting on Bilaton",
                        style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Image.asset("assets/icons/question-vendor.png", color: const Color(0xFF1A2B47),)
                  ],
                ),
                const SizedBox(height: 30,),
                const Text(
                  "I'm hosting as a private individual",
                  style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
