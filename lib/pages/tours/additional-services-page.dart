import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'go-payment-tours-page.dart';

class AdditionalServicesPage extends StatefulWidget {
  const AdditionalServicesPage({Key? key}) : super(key: key);

  @override
  State<AdditionalServicesPage> createState() => _AdditionalServicesPageState();
}

class _AdditionalServicesPageState extends State<AdditionalServicesPage> {
  bool isChecked = false;
  bool isChecked1 = false;
  String valueRadio ="";
  bool selectedRadio = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
      MaterialState.selected,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.white;
    }
    return Colors.white;
  }
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
              "Дополнительные услуги",
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
        actions: [
          IconButton(
              onPressed: (){
                setState(() {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => TicketsFilterPage()));
                });
              },
              icon: Image.asset("assets/icons/share-appbar.png")
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff5F90F3),
                    Color(0xff8DB2E9),
                    Color(0xff7783EE),
                    Color(0xff5F90F3),
                  ],
                  stops: [0.0006, 0.3662, 0.6958, 0.9893],
                )
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "1200\$",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Детализация цены",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Проверка цены у туроператоров через",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "12:23",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.access_time_rounded, color: Colors.white,)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Text(
                  "Выберите дополнительные услуги и способ оплаты",
                  style: TextStyle(
                      color: Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "Сделайте свой отдых более\nкомфортным",
                  style: TextStyle(
                      color: Color(0xFF5E6D77),
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/images/bg-services.png"),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Дополнительные\nуслуги",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 24
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        "Приоритетное обслуживание",
                        style: TextStyle(
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w600,
                            fontSize: 14
                        ),
                      ),
                      SizedBox(width: 10,),
                      Image.asset("assets/icons/question.png", color: Colors.white,)

                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Наш эксперт оперативно ответит вам в любом мессенджере",
                          style: TextStyle(
                              color: Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 12
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "+230\$",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 17,
                              height: 17,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    spreadRadius: -1,
                                    offset: Offset(-1, -1),
                                    color: Colors.black.withOpacity(0.2),
                                      blurStyle: BlurStyle.normal
                                  )
                                ]
                              ),
                              child: CheckboxTheme(
                                data:  CheckboxThemeData(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                ),
                                child: Checkbox(
                                  checkColor: Color(0xFF1A2B47).withOpacity(0.85),
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
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 4,
                    blurRadius: 26,
                    offset: Offset(3,4),
                    color: Color(0xFF5F90F3).withOpacity(0.13)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/reneccanc.png"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "+400\$",
                            style: TextStyle(
                                color: Color(0xFF1A2B47).withOpacity(0.85),
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 17,
                            height: 17,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 4,
                                      spreadRadius: 0,
                                      offset: Offset(-3, -3),
                                      color: Colors.black.withOpacity(0.1),
                                      blurStyle: BlurStyle.normal
                                  )
                                ]
                            ),
                            child: CheckboxTheme(
                              data:  CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3)
                                ),
                              ),
                              child: Checkbox(
                                checkColor: Color(0xFF1A2B47).withOpacity(0.85),
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
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Страховка от невыезда с\nмаксимальной компенсацией",
                    style: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontWeight: FontWeight.w400,
                        fontSize: 12
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    "Страховая компания компенсирует стоимость тура , если вы вынуждены вернуться , не сможете полететь из за Ковид 19 или другой болезни у вас или ваших родственников, чрезвычайного положения и других факторов",
                    style: TextStyle(
                        color: Color(0xFF5E6D77),
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: (){
                setState(() {

                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Color(0xFF5F90F3),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    "Добавить пожелания к заказу",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                    ),
                  ),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: (){},
              child: Text(
                "Использовать промокод  или потратить кэшбек",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                    color: Color(0xFF1A2B47).withOpacity(0.85),
                    fontWeight: FontWeight.w500,
                    fontSize: 12
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text(
                  "Выберите способ оплаты",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF1A2B47).withOpacity(0.85),
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Вам будет начислен кэшбек",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                            color: Color(0xFF1A2B47).withOpacity(0.85),
                            fontWeight: FontWeight.w500,
                            fontSize: 12
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "+795",
                        style: TextStyle(
                            color: Color(0xFF5F90F3),
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 163,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 26,
                    spreadRadius: 4,
                    offset: Offset(3,4),
                    color: Color(0xFF5F90F3).withOpacity(0.13)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Color(0xFFF2F2F2).withOpacity(0.85),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Банковская карта",
                              style: TextStyle(
                                  color: Color(0xFF1A2B47).withOpacity(0.85),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(width: 10,),
                            Image.asset("assets/images/visa.png"),
                            SizedBox(width: 10,),
                            Image.asset("assets/icons/master-card.png")
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedRadio = !selectedRadio;
                            });
                          },
                          child: Container(
                            width: 23,
                            height: 23,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:  Colors.white,
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
                              size: 11,
                              color: selectedRadio ? Color(0xFF1A2B47).withOpacity(0.85) : Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          "Оплата картой мгнавенно закрепит за\nвами места и цену по этому туру",
                          style: TextStyle(
                              color: Color(0xFF5E6D77),
                              fontWeight: FontWeight.w400,
                              fontSize: 10
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Документы и подтверждение\nбудет отправлено по e-mail",
                          style: TextStyle(
                              color: Color(0xFF5E6D77),
                              fontWeight: FontWeight.w400,
                              fontSize: 10
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CheckboxTheme(
              data: CheckboxThemeData(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)
                ),
              ),
              child: CheckboxListTile(
                activeColor: Color(0xFF5E6D77),
                title:  Text(
                    "Я согласен и принимаю условия договора оферты\nи пользовательского соглашения, ознакомлен\nс правилами изменения и отмены",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF005BFE),
                    fontSize: 10,
                    fontWeight: FontWeight.w300
                  ),
                ),
                value: isChecked,
                contentPadding: EdgeInsets.zero,
                onChanged: (newValue) {
                  setState(() {
                    isChecked = !isChecked;
                  });
                },
                controlAffinity: ListTileControlAffinity.trailing, //  <-- leading Checkbox
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GoPaymentToursPage()));
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Color(0xFF005BFE),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Text(
                    "Перейти к оплате",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
