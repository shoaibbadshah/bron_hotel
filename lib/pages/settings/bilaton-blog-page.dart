import 'package:bron_hotel/pages/settings/blog-single-page.dart';
import 'package:flutter/material.dart';


import '../../widgets/follow-screen.dart';

class BilatonBlogPage extends StatefulWidget {
  const BilatonBlogPage({Key? key}) : super(key: key);

  @override
  State<BilatonBlogPage> createState() => _BilatonBlogPageState();
}

class _BilatonBlogPageState extends State<BilatonBlogPage> {
  bool readMore = false;
  ScrollController controllerListView = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4FB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 100,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons/blog-icon.png"),
                IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.notifications_none, color: Color(0xFF1A2B47), size: 31,)
                )
              ],
            ),
            const Divider()
          ],
        ),
      ),
      body: ListView(
        controller: controllerListView,
        children: [
          Column(
            children: List.generate(3, (index) =>
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Lorem ipsum dolor sit amet",
                            style: TextStyle(
                                color: Color(0xFF1A2B47),
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                            "22 May 2018",
                            style: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 10,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          const SizedBox(height: 10,),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const BlogSinglePage()));
                              });
                            },
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset("assets/images/blog-images1.png"),
                                    const SizedBox(width: 10,),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          buildText("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis ",),
                                          TextButton(
                                              onPressed: (){
                                                setState(() {
                                                  readMore = !readMore;
                                                });
                                              },
                                              child: Text(
                                                "Learn more",
                                                style: TextStyle(
                                                  decoration: TextDecoration.underline,
                                                    color: !readMore ?  const Color(0xFF005BFE) : const Color(0xFFFA5636),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w500),
                                              )
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Comments 22",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/icons/likes.png"),
                                  const SizedBox(width: 10,),
                                  const Text(
                                    "Likes 500",
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset("assets/icons/shares.png"),
                                  const SizedBox(width: 10,),
                                  const Text(
                                    "Share",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15,),
                        ],
                      ),
                    ),
                    const Divider()
                  ],
                ),
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                 Text(
                  "Page 1 of 200",
                  style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width / 2.5, 40),
                      backgroundColor: const Color(0xFF1A2B47).withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: const Text(
                    "Previous",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  )),
              const SizedBox(width: 10,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width / 2.5, 40),
                      backgroundColor: const Color(0xFF1A2B47),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  )),
            ],
          ),
          const SizedBox(height: 20,),
          const FollowScreen(),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
  Text buildText(String text) {
    final lines = readMore ? null : 5;
    return Text(
      text,
      maxLines: lines,
      style: TextStyle(
        color: const Color(0xFF1A2B47),
        fontSize: 12,
        fontWeight: FontWeight.w400,
        overflow: readMore ? TextOverflow.visible: TextOverflow.ellipsis,
      ),
    );
  }
}
