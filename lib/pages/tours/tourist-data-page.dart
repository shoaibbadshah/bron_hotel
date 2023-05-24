import 'package:bron_hotel/pages/tours/additional-services-page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum  RadioSexValue { men, women }

class TouristDataPage extends StatefulWidget {
  const TouristDataPage({Key? key}) : super(key: key);

  @override
  State<TouristDataPage> createState() => _TouristDataPageState();
}

class _TouristDataPageState extends State<TouristDataPage> {
  TextEditingController controllerFirstName = TextEditingController();
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
  TextEditingController controllerDateBirth = TextEditingController();
  TextEditingController controllerCitizenship = TextEditingController();
  TextEditingController controllerNumberPassport = TextEditingController();

  TextEditingController controllerChildFirstName = TextEditingController();
  TextEditingController controllerChildName = TextEditingController();
  TextEditingController controllerChildLastName = TextEditingController();
  TextEditingController controllerChildDateBirth = TextEditingController();
  TextEditingController controllerChildCitizenship = TextEditingController();
  TextEditingController controllerChildNumberPassport = TextEditingController();

  bool saveForm = true;
  String valueFormRadio ="";
  RadioSexValue sexValue = RadioSexValue.men;

  String _selectedCountry = "Россия";

  List<String> _countries = [
    'Россия',
    'Германия',
    'Англия',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f4fb),
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
              "Данные туристов",
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
          saveForm
              ? buildFormAdult(context)
              : buildFormChild(context),
          saveForm  ? Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 2,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF5F90F3),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color:Color(0xFF5F90F3).withOpacity(0.8),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 2,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFF5F90F3),
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Color(0xFF5F90F3).withOpacity(0.8),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Взрослый",
                                      style: TextStyle(
                                          color: Color(0xFF1A2B47).withOpacity(0.85),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text(
                                      "Не заполнено",
                                      style: TextStyle(
                                          color: Color(0xFF5E6D77),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ребенок",
                                      style: TextStyle(
                                          color: Color(0xFF1A2B47).withOpacity(0.85),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                    Text(
                                      "Не заполнено",
                                      style: TextStyle(
                                          color: Color(0xFF5E6D77),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ) : Container()
        ],
      ),
    );
  }

  Container buildFormChild(BuildContext context) {
    return Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text(
                "Заполните данные туристов",
                style: TextStyle(
                    color: Color(0xFF1A2B47).withOpacity(0.85),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color:Color(0xFF5F90F3).withOpacity(0.8),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 2,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF5F90F3),
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF5F90F3).withOpacity(0.8),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 2,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF5F90F3),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Соморенко Анастасия Семеновна",
                                          style: TextStyle(
                                              color: Color(0xFF1A2B47).withOpacity(0.85),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text(
                                          "27 лет , 24.06.1995\n235678632",
                                          style: TextStyle(
                                              color: Color(0xFF5E6D77),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Петров Алексей Антонович",
                                          style: TextStyle(
                                              color: Color(0xFF1A2B47).withOpacity(0.85),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text(
                                          "29 лет , 14.06.1992\n234876001",
                                          style: TextStyle(
                                              color: Color(0xFF5E6D77),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                    color: Color(0xFF5F90F3).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ребенок , 1 год",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Св-во о рождении",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 15,),
                    Form(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Фамилия (паспорт РФ)",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerChildFirstName,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: 'Петров',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
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
                                "Имя (паспорт РФ)",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerChildName,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: 'Иван',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
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
                                "Отчество (паспорт РФ)",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerChildLastName,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: 'Петрович',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Пол",
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Color(0xFFACB5BE),
                                        fillColor: MaterialStateColor.resolveWith(
                                                (states) => Color(0xFFACB5BE)),
                                        value: "men",
                                        groupValue: valueFormRadio,
                                        onChanged: (value) {
                                          setState(() {
                                            valueFormRadio = value.toString();
                                          });
                                        },
                                      ),
                                      Text(
                                        "Мужской",
                                        style: TextStyle(
                                            color: Color(0xFF5E6D77),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Color(0xFFACB5BE),
                                        fillColor: MaterialStateColor.resolveWith(
                                                (states) => Color(0xFFACB5BE)),
                                        value: "women",
                                        groupValue: valueFormRadio,
                                        onChanged: (value) {
                                          setState(() {
                                            valueFormRadio = value.toString();
                                          });
                                        },
                                      ),
                                      Text(
                                        "Женский",
                                        style: TextStyle(
                                            color: Color(0xFF5E6D77),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Дата рождения",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerChildDateBirth,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: 'Выберите дату',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  suffixIcon: Image.asset("assets/icons/calendar.png", color: Color(0xFF1A2B47),),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
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
                                "Гражданство",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              DropdownButtonFormField<String>(
                                icon: Icon(Icons.keyboard_arrow_down),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                value: _selectedCountry,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedCountry = newValue!;
                                  });
                                },
                                items: _countries.map((country) {
                                  return DropdownMenuItem(
                                    child: Text(
                                        country,
                                        style: TextStyle(
                                            color: Color(0xFF1A2B47).withOpacity(0.85),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                    ),
                                    value: country,
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Номер паспорта РФ",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerChildCitizenship,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: '0000 000000',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AdditionalServicesPage()));
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFF005BFE),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "Сохранить и перейти\nк оплате",
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
              SizedBox(height: 15,),
            ],
          ),
        );
  }

  Container buildFormAdult(BuildContext context) {
    return Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15,),
              Text(
                "Заполните данные туристов",
                style: TextStyle(
                    color: Color(0xFF1A2B47).withOpacity(0.85),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                  color: Color(0xFF5F90F3).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Взрослый",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),
                    ),
                    SizedBox(height: 15,),
                    Text(
                      "Паспорт РФ",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 15,),
                    Form(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Фамилия (паспорт РФ)",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerFirstName,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: 'Петров',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
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
                                "Имя (паспорт РФ)",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerName,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: 'Иван',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
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
                                "Отчество (паспорт РФ)",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerLastName,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: 'Петрович',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Пол",
                                    style: TextStyle(
                                        color: Color(0xFF5E6D77),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Radio(
                                      activeColor: Color(0xFFACB5BE),
                                      fillColor: MaterialStateColor.resolveWith(
                                              (states) => Color(0xFFACB5BE)),
                                        value: "men",
                                        groupValue: valueFormRadio,
                                        onChanged: (value) {
                                          setState(() {
                                            valueFormRadio = value.toString();
                                          });
                                        },
                                      ),
                                      Text(
                                        "Мужской",
                                        style: TextStyle(
                                            color: Color(0xFF5E6D77),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Color(0xFFACB5BE),
                                        fillColor: MaterialStateColor.resolveWith(
                                                (states) => Color(0xFFACB5BE)),
                                        value: "women",
                                        groupValue: valueFormRadio,
                                        onChanged: (value) {
                                          setState(() {
                                            valueFormRadio = value.toString();
                                          });
                                        },
                                      ),
                                      Text(
                                        "Женский",
                                        style: TextStyle(
                                            color: Color(0xFF5E6D77),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Дата рождения",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerDateBirth,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: 'Выберите дату',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  suffixIcon: Image.asset("assets/icons/calendar.png", color: Color(0xFF1A2B47),),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
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
                                "Гражданство",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              DropdownButtonFormField<String>(
                                icon: Icon(Icons.keyboard_arrow_down),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                value: _selectedCountry,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedCountry = newValue!;
                                  });
                                },
                                items: _countries.map((country) {
                                  return DropdownMenuItem(
                                    child: Text(
                                      country,
                                      style: TextStyle(
                                          color: Color(0xFF1A2B47).withOpacity(0.85),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    value: country,
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Номер паспорта РФ",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 5,),
                              TextField(
                                controller: controllerCitizenship,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                  hintText: '0000 000000',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFACB5BE),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    saveForm = !saveForm;
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF005BFE),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "Сохранить и перейти к\nследующему туристу",
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
              SizedBox(height: 15,),
            ],
          ),
        );
  }
}
