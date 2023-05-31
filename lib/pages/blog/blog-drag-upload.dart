import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class BlogDragUpload extends StatefulWidget {
  const BlogDragUpload({Key? key}) : super(key: key);

  @override
  State<BlogDragUpload> createState() => _BlogDragUploadState();
}

class _BlogDragUploadState extends State<BlogDragUpload> {
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
                      "Next, let’s add some\nphotos of your place",
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
                        children: const <Widget>[
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
            child: DottedBorder(
              dashPattern: [8,8],
              strokeWidth: 2,
              borderType: BorderType.RRect,
              radius: const Radius.circular(30),
              color: const Color(0xFF1A2B47),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ta-da! How does this look?",
                      style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5,),
                    const Text(
                      "Drag to reorder",
                      style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xFF1A2B47))
                          ),
                          child: Row(
                            children: [
                              Image.asset("assets/icons/upload-blog.png"),
                              const SizedBox(width: 10,),
                              const Text(
                                "Upload",
                                style: TextStyle(
                                  color: Color(0xFF1A2B47),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/upload-img.png"),
                        fit: BoxFit.cover
                      )
                    ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: const Color(0xFF1A2B47))
                            ),
                            child: Text(
                              "Cover photo",
                              style: TextStyle(
                                color: Color(0xFF1A2B47),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 7,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage("assets/images/blog-img11.png"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 7,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage("assets/images/blog-img11.png"),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(
                          child: DottedBorder(
                            dashPattern: [8,8],
                            strokeWidth: 2,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(10),
                            color: const Color(0xFF1A2B47),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 7,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                              child: Center(
                                child: Image.asset("assets/icons/drag-images.png"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 200,),
        ],
      ),
    );
  }
}
