
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  bool selectedRadio = false;
  int selectedPayment = 0;
  int selectCard = 0;
  List imagesCard = [
    "assets/images/visa.png",
    "assets/icons/master-card.png",
  ];
  List<PaymentOption> paymentList = [
    PaymentOption(
        "Оплатить полностью",
        "Заплатите сумму полностью и сфокусируйтесь на поездке.",
        1320
    ),
    PaymentOption(
        "Оплатите часть сейчас, а остаток внесите позже",
        "Внесите \$640 сейчас, а остаток (\$700) автоматически спишется с того же способа оплаты 26 нояб. 2022 г.. Без дополнительных сборов.",
        1320
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
        ),
        backgroundColor: Color(0xFF1A2B47),
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Способ оплаты",
              style: TextStyle(
                color: Color(0xFFF1F4FB),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "23 - 30 июля , 1 чел.",
              style: TextStyle(
                color: Color(0xFFA0AFCC),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.6,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/images-tours 2.png"),
                    fit: BoxFit.fill
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "Beach Spa Resort",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "4,97",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 14
                            ),
                          ),
                          Icon(Icons.star, color: Colors.white,)
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Color(0xFFACB5BE),),
                    Text(
                      "La Soukra, Tunis",
                      style: TextStyle(
                          color: Color(0xFFACB5BE),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15,),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:  Text(
              "Бронирование",
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontWeight: FontWeight.w600,
                  fontSize: 16
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Column(
            children: List.generate(paymentList.length, (index) =>
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                color: selectedPayment == index ? Color(0xFF5F90F3) : Color(0xFF5E6D77)
                            )
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                paymentList[index].name,
                                style: TextStyle(
                                    color: selectedPayment == index ? Color(0xFF005BFE) : Color(0xFF1A2B47).withOpacity(0.85),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "${paymentList[index].price}\$",
                                    style: TextStyle(
                                        color: selectedPayment == index ? Color(0xFF005BFE) : Color(0xFF1A2B47).withOpacity(0.85),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedPayment = index;
                                      });
                                    },
                                    child: Container(
                                      width: 23,
                                      height: 23,
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:  selectedPayment == index? Color(0xFF005BFE) : Colors.transparent,
                                          border: selectedPayment == index ? null : Border.all(color: Color(0xFF5E6D77), width: 2),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 10,
                                                spreadRadius: 0,
                                                offset: Offset(5,8),
                                                color: Colors.black.withOpacity(0.1)
                                            )
                                          ]
                                      ),
                                      child: Icon(
                                        Icons.circle,
                                        size: 15,
                                        color: selectedPayment == index ? Colors.white : Colors.transparent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(right: 50.0),
                          child: Text(
                            paymentList[index].description,
                            style: TextStyle(
                                color:  Color(0xFF5E6D77) ,
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                )
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Оплатить с помощью",
                  style: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(imagesCard.length, (index) =>
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              selectCard = index;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 65,
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: selectCard == index ? Border.all(color: Color(0xFF005BFE)) : null,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 25,
                                      spreadRadius: 0,
                                      offset: Offset(0,7),
                                      color: Colors.black.withOpacity(0.1)
                                  ),
                                ]
                            ),
                            child: Center(
                              child: Image.asset(imagesCard[index]),
                            ),
                          ),
                        )
                    )
                ),
                const SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(colors: [Colors.white.withOpacity(0.1), Color(0xFF5F90F3).withOpacity(0.35),]),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 25,
                            spreadRadius: 0,
                            offset: Offset(0,7),
                            color: Colors.black.withOpacity(0.1)
                        ),
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/mir.png"),
                      SizedBox(width: 15,),
                      Text(
                        "1256 7889 3344 6651",
                        style: TextStyle(
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w600,
                            fontSize: 14
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: GradientBoxBorder(
                          gradient: LinearGradient(colors: [Colors.white.withOpacity(0.1), Color(0xFF5F90F3).withOpacity(0.35),]),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 24,
                              spreadRadius: -1,
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset(0,4)
                          )
                        ],

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/addcard.png"),
                          SizedBox(width: 20,),
                          Text(
                            "Добавить карту",
                            style: TextStyle(
                                color: Color(0xFF005BFE),
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "70\$",
                        style: TextStyle(
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        ),
                      ),
                      Text(
                        "23 июл - 30 июл",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w400,
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => BookingFormPage()));
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFF005BFE),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text(
                        "Забронировать",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30)
        ],
      )
    );
  }
}

class PaymentOption {
  String name;
  String description;
  int price;

  PaymentOption(this.name, this.description, this.price);
}