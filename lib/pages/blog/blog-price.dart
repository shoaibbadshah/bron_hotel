import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogPrice extends StatefulWidget {
  const BlogPrice({Key? key}) : super(key: key);

  @override
  State<BlogPrice> createState() => _BlogPriceState();
}

class _BlogPriceState extends State<BlogPrice> {
  int numberOfItems = 0;
  bool readMore = false;
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
      MaterialState.selected,
    };
    if (states.any(interactiveStates.contains)) {
      return Color(0xFF1A2B47);
    }
    return Color(0xFF1A2B47);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: _decrementButton()),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xFF1A2B47),width: 2),
                            ),
                            child: Center(
                              child: Text(
                                "\$${numberOfItems}",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "per night",
                            style: TextStyle(
                              color: Color(0xFF1A2B47),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: _incrementButton()),

                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Places like yours usually range from\n\$19 to \$32.",
                        style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Image.asset("assets/icons/question-vendor.png", color: Color(0xFF1A2B47),)
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFF1A2B47), width: 0.5)
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildText("Offer a 20% discount for your first 3 guests to help you get booked faster. Offer a 20% discount for your first 3 guests to help you get booked faster."),
                                SizedBox(height: 15,),
                                TextButton(
                                  onPressed: (){
                                    setState(() {
                                      readMore = !readMore;
                                    });
                                  },
                                  child: const Text(
                                    "Learn more",
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                        color: Color(0xFF1A2B47),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                          CheckboxTheme(
                            data:  CheckboxThemeData(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3)
                              ),
                            ),
                            child: Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(
                                  getColor
                              ),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Text buildText(String text) {
    final lines = readMore ? null : 2;
    return Text(
      text,
      maxLines: lines,
      style: TextStyle(
        color: Color(0xFF5E6D77),
        fontSize: 15,
        fontWeight: FontWeight.w400,
        overflow: readMore ? TextOverflow.visible: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _incrementButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          numberOfItems++;
        });
      },
      child: Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF757575))
          ),
          child: Center(child: Icon(Icons.add, color: Color(0xFF757575)))
      ),
    );
  }

  Widget _decrementButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          numberOfItems--;
        });
      },
      child: Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF757575))
          ),
          child: Center(child: Icon(Icons.remove, color: Color(0xFF757575)))
      ),
    );
  }
}
