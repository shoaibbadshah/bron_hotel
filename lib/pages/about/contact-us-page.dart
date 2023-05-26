import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  ScrollController controllerListView = ScrollController();
  TextEditingController controllerYouName = TextEditingController();
  TextEditingController controllerYouEmail = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerAboutTou= TextEditingController();

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
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
          ),
          backgroundColor: const Color(0xFF1A2B47),
          centerTitle: true,
          title: const Text(
            "Свяжитесь с нами",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: ListView(
          controller: controllerListView,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          children: [
            const SizedBox(height: 20,),
            Center(
              child: Image.asset(
                'assets/images/newlogo.png',
                width: 128,
                height: 39,
              ),
            ),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  "Email",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xFF1A2B47).withOpacity(0.5),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10,),
                Text(
                  "hello@bilaton.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xFF1A2B47).withOpacity(0.85),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),

                const SizedBox(height: 20,),
              ],
            ),
            Row(
              children: [
                Image.asset("assets/icons/icons-fac.png"),
                const SizedBox(width: 20,),
                Image.asset("assets/icons/youtube-icons.png"),
                const SizedBox(width: 20,),
                Image.asset("assets/icons/twitter-icons.png"),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/maps-image.png", fit: BoxFit.fill,)
            ),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Text(
                  "Свяжитесь с нами через почту",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 15,),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("Your name", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 14, fontWeight: FontWeight.w400),),
                        ),
                        const SizedBox(height: 5,),
                        TextField(
                          controller: controllerYouName,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Напишите имя',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(100.0)),
                              borderSide: BorderSide(color: Color(0xFFACB5BE)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(100.0)),
                              borderSide: BorderSide(color: Color(0xFFACB5BE)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("Your email", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 14, fontWeight: FontWeight.w400),),
                        ),
                        const SizedBox(height: 5,),
                        TextField(
                          controller: controllerYouEmail,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Напишите действующую почту',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(100.0)),
                              borderSide: BorderSide(color: Color(0xFFACB5BE)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(100.0)),
                              borderSide: BorderSide(color: Color(0xFFACB5BE)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("About you", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 14, fontWeight: FontWeight.w400),),
                        ),
                        const SizedBox(height: 5,),
                        TextField(
                          controller: controllerAboutTou,
                          maxLines: 15,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Напишите письмо',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.transparent,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(color: Color(0xFFACB5BE)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(color: Color(0xFFACB5BE)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Column(
                  children: [
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(MediaQuery.of(context).size.width / 2, 42),
                              backgroundColor: const Color(0xFF005BFE),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100))),
                          onPressed: null,
                          child: const Text(
                            "Send",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
