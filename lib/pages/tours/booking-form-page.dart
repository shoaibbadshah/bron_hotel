import 'package:bron_hotel/pages/tours/payment-method-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingFormPage extends StatefulWidget {
  const BookingFormPage({Key? key}) : super(key: key);

  @override
  State<BookingFormPage> createState() => _BookingFormPageState();
}

class _BookingFormPageState extends State<BookingFormPage> {
  @override
  Widget build(BuildContext context) {
    int selectCard = 0;
    List imagesCard = [
      "assets/images/visa.png",
      "assets/icons/master-card.png",
    ];

    TextEditingController controllerName = TextEditingController();
    TextEditingController controllerLastName = TextEditingController();
    TextEditingController controllerPhone = TextEditingController();
    TextEditingController controllerEmail = TextEditingController();
    TextEditingController controllerCountry = TextEditingController();
    TextEditingController controllerRegion = TextEditingController();
    TextEditingController controllerCity = TextEditingController();
    TextEditingController controllerIndex = TextEditingController();
    TextEditingController controllerAddress1 = TextEditingController();
    TextEditingController controllerAddress2 = TextEditingController();
    TextEditingController controllerDescription = TextEditingController();

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
              "Бронирование",
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Бронирование",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
              const SizedBox(height: 20,),
              Form(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Имя ",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerName,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Albert',
                            hintStyle: TextStyle(
                                color: Color(0xFF5F6B7E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Фамилия ",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerLastName,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Salnazaryan',
                            hintStyle: TextStyle(
                                color: Color(0xFF5F6B7E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Номер телефона",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerPhone,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: '+37477106548',
                            hintStyle: TextStyle(
                                color: Color(0xFF5F6B7E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Эл. адрес ",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerEmail,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'example@gmail.com',
                            hintStyle: TextStyle(
                                color: Color(0xFF5F6B7E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Страна ",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerCountry,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Выбрать',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Государство / Провинция / Регион",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerRegion,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Выбрать',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Город",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerCity,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Ваш Город',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Индекс / Почтовый индекс",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerIndex,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Индекс / Почтовый индекс',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Адресная строка 1",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerAddress1,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Адресная строка 1',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Адресная строка 2",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerAddress2,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Адресная строка 2',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Специальные требования",
                          style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5,),
                        TextField(
                          controller: controllerDescription,
                          maxLines: 5,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            hintText: 'Напишите ваши требования',
                            hintStyle: TextStyle(
                                color: Color(0xFFACB5BE),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFF1A2B47).withOpacity(0.3), width: 0.5),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Color(0xFFD80027), width: 0.5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              Center(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethodPage()));
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    decoration: BoxDecoration(
                        color: Color(0xFF005BFE),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Text(
                        "Сохранить",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
