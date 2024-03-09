
import 'package:flutter/material.dart';

class BlogHighlights extends StatefulWidget {
  const BlogHighlights({Key? key}) : super(key: key);

  @override
  State<BlogHighlights> createState() => _BlogHighlightsState();
}

class _BlogHighlightsState extends State<BlogHighlights> {
  ScrollController controller = ScrollController();
  int selectGridData = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.25,
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            decoration: BoxDecoration(
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
                    Text(
                      "Save and exit",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 20,),
                    Image.asset("assets/icons/question-vendor.png")
                  ],
                ),
                SizedBox(height: 50,),
                Column(
                  children: [
                    Image.asset("assets/icons/pilot-vendor.png"),
                    SizedBox(height: 20,),
                    Text(
                      "Now, let’s choose up\nhighlights",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(89),
                          border: Border.all(color: Colors.white)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Choose up to 2 highlights",
              style: TextStyle(
                color: Color(0xFF1A2B47),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              controller: controller,
              scrollDirection: Axis.vertical,
              primary: false,
              padding: EdgeInsets.all(20),
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8 / 0.3,
                crossAxisCount: 2,
              ),
              itemCount: 6,
              itemBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectGridData = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: selectGridData == index ? Color(0xFFDCE0E9) : null,
                            border: Border.all(color: Color(0xFF1A2B47)),
                            borderRadius: BorderRadius.circular(43)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/obuv-blog.png"),
                            SizedBox(width: 10,),
                            Text(
                              "Peaceful",
                              style: TextStyle(
                                  color: Color(0xFF1A2B47),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
            ),
          )

        ],
      ),
    );
  }
}
