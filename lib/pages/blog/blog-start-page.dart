import 'package:bron_hotel/pages/blog/blog-drag-photos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blog-description.dart';
import 'blog-drag-upload.dart';
import 'blog-highlights.dart';
import 'blog-price.dart';
import 'blog-question.dart';
import 'blog-you-title.dart';

class BlogStartPage extends StatefulWidget {
  const BlogStartPage({Key? key}) : super(key: key);

  @override
  State<BlogStartPage> createState() => _BlogStartPageState();
}

class _BlogStartPageState extends State<BlogStartPage> {
  PageController pageController = PageController(viewportFraction: 0.99, initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              controller: pageController,
              children: [
                BlogDragPhotos(),
                BlogDragUpload(),
                BlogYouTitle(),
                BlogHighlights(),
                BlogDescription(),
                BlogPrice(),
                BlogQuestion()
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.symmetric(horizontal: BorderSide(color: Color(0xFFD9D9D9)))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: (){
                  setState(() {
                    pageController.previousPage(duration: Duration(microseconds: 500), curve: Curves.easeInOut );

                  });
                },
                child: Text(
                  "Back",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                  ),
                )
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  pageController.nextPage(duration: Duration(microseconds: 500), curve: Curves.easeInOut );
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 5,
                height: 33,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF1A2B47),
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Center(
                  child: Text(
                    "Next",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
