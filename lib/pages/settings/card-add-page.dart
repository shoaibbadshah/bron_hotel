import 'package:flutter/material.dart';

class CardAddPage extends StatefulWidget {
  const CardAddPage({Key? key}) : super(key: key);

  @override
  State<CardAddPage> createState() => _CardAddPageState();
}

class _CardAddPageState extends State<CardAddPage> {
  ScrollController controllerListView = ScrollController();
  TextEditingController controllerNumberCard = TextEditingController();
  TextEditingController controllerNumberCardMM = TextEditingController();
  TextEditingController controllerNumberCardGG = TextEditingController();
  TextEditingController controllerNumberCardCVV = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
        alignment: Alignment.topRight,
        image: AssetImage(
          "assets/images/blur-image.png",
        ),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFF1A2B47),
          centerTitle: true,
          title: const Text(
            "Привязать карту",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: ListView(
            controller: controllerListView,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4.2,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 24,
                            spreadRadius: -1,
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 4))
                      ],
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.8),
                            Color.fromRGBO(255, 255, 255, 0.8),
                          ],
                          stops: [0.0922, 0.7694],
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icons/master-card.png"),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset("assets/images/visa.png"),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    color: Colors.black.withOpacity(0.25),
                                    offset: const Offset(-3, -3),
                                    blurStyle: BlurStyle.inner),
                              ]),
                          child: TextField(
                            controller: controllerNumberCard,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              hintText: '0000 0000 0000 0000',
                              hintStyle: TextStyle(
                                  color: Color(0xFFACB5BE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 100,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Colors.black.withOpacity(0.25),
                                        offset: const Offset(-3, -3),
                                        blurStyle: BlurStyle.inner),
                                  ]),
                              child: TextField(
                                controller: controllerNumberCardMM,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  hintText: 'ММ',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text(
                              "/",
                              style: TextStyle(
                                  color: Color(0xFF1A2B47), fontSize: 24),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 6,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Colors.black.withOpacity(0.25),
                                        offset: const Offset(-3, -3),
                                        blurStyle: BlurStyle.inner),
                                  ]),
                              child: TextField(
                                controller: controllerNumberCardGG,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  hintText: 'ГГ',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.red),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 24,
                            spreadRadius: -1,
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 4))
                      ],
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFE4EEFF),
                          Color(0xFFF2F7FF),
                        ],
                        stops: [
                          0.0922,
                          0.5282,
                        ],
                        transform: GradientRotation(115.35 * 3.14 / 180),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 41,
                          width: double.infinity,
                          color: const Color(0xFFD1DAEB),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 5,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 4,
                                          spreadRadius: 0,
                                          color: Colors.black.withOpacity(0.25),
                                          offset: const Offset(-3, -3),
                                          blurStyle: BlurStyle.inner),
                                    ]),
                                child: TextField(
                                  controller: controllerNumberCardGG,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    hintText: 'CVV/CVC',
                                    hintStyle: TextStyle(
                                        color: Color(0xFFACB5BE),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                    filled: true,
                                    fillColor: Colors.white,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(color: Colors.red),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "*Lorem Ipsum is simply dummy text of the printing",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFFD80027),
                    fontSize: 12,
                    fontWeight: FontWeight.w300
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.8,
                  color: Color(0xFF5E6D77),
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(MediaQuery.of(context).size.width / 1.8, 50),
                            backgroundColor: const Color(0xFFACB5BE),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {},
                        child: const Text(
                          "Привязать",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ]),
      ),
    );
  }
}
