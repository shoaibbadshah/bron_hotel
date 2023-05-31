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
      return const Color(0xFF1A2B47);
    }
    return const Color(0xFF1A2B47);
  }
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
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: const Color(0xFF1A2B47),width: 2),
                            ),
                            child: Center(
                              child: Text(
                                "\$$numberOfItems",
                                style: const TextStyle(
                                    color: Color(0xFF1A2B47),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text(
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
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Places like yours usually range from\n\$19 to \$32.",
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color(0xFF1A2B47), width: 0.5)
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
                                const SizedBox(height: 15,),
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
          ),
          const SizedBox(height: 200,),
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
        color: const Color(0xFF5E6D77),
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
              border: Border.all(color: const Color(0xFF757575))
          ),
          child: const Center(child: Icon(Icons.add, color: Color(0xFF757575)))
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
              border: Border.all(color: const Color(0xFF757575))
          ),
          child: const Center(child: Icon(Icons.remove, color: Color(0xFF757575)))
      ),
    );
  }
}
