import 'dart:async';

import 'package:bron_hotel/pages/auth/dialog-check-newpass.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'dialog-chek-email.dart';
StreamController<dynamic> refreshStream = StreamController<dynamic>.broadcast();

class LoginAndRegisterPage extends StatefulWidget {
  const LoginAndRegisterPage({Key? key}) : super(key: key);

  @override
  State<LoginAndRegisterPage> createState() => _LoginAndRegisterPageState();
}

class _LoginAndRegisterPageState extends State<LoginAndRegisterPage> {
  TextEditingController controllerRegisterName = TextEditingController();
  TextEditingController controllerRegisterLastName = TextEditingController();
  TextEditingController controllerRegisterPhone = TextEditingController();
  TextEditingController controllerRegisterEmail = TextEditingController();
  TextEditingController controllerRegisterPass = TextEditingController();
  TextEditingController controllerRegisterPass1 = TextEditingController();

  TextEditingController controllerAuthEmail = TextEditingController();
  TextEditingController controllerAuthPass = TextEditingController();

  TextEditingController controllerForgotPassEmail = TextEditingController();

  TextEditingController controllerChangePassEmail = TextEditingController();
  TextEditingController controllerChangePassPass = TextEditingController();

  ScrollController controllerListViewSheetRegister = ScrollController();

  @override
  void initState() {
    refreshStream.stream.listen((event) {
      if (event) {
        _showModalChangeNewPassword(context);
      }
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/newlogo.png',
          width: 128,
          height: 39,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          Column(
            children: [
              Container(
                height: 38,
                width: MediaQuery.of(context).size.width / 1.5,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color(0xFFFA5636),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: (){
                            _showModalAuth(context);
                          },
                          child: const Text(
                            "Войти",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          )
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 3,
                      color: Colors.white,
                    ),
                    Expanded(
                      flex: 2,
                        child: TextButton(
                          onPressed: (){
                            setState(() {
                              _showModalRegister(context);
                            });
                          },
                          child: const Text(
                            "Регистрация",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFF005BFE).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: const <Widget>[
                     Text(
                        "Стать партнером",
                        style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 14,
                          fontWeight: FontWeight.w600
                        ),
                    ),
                     SizedBox(width: 5,),
                     Icon(Icons.arrow_forward, color: Color(0xFF005BFE),)
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 30,),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 5,
                      height: 40,
                      decoration: const BoxDecoration(
                          color: Color(0xFF005BFE),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(3), bottomRight:Radius.circular(3) )
                      ),
                    ),
                    const SizedBox(width: 20,),
                    const Text("Блог сообщества", style: TextStyle(color: Color(0xFF005BFE), fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
                const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 1,),
                )
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(width: 20,),
                    const Text("Язык", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
                const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 1,),
                )
              ],
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(width: 20,),
                    const Text("Валюта", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
                const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 1,),
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Image.asset("assets/icons/reference.png"),
                const SizedBox(width: 5,),
                const Text("Справка", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showModalRegister(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.85,
                    maxChildSize: 1,
                    minChildSize: 0.25,
                    builder: (BuildContext context, ScrollController scrollController) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          controller: controllerListViewSheetRegister,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          scrollDirection: Axis.vertical,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.clear),
                              )
                            ),
                            const Center(child: Text("Зарегистрироваться", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w700),)),
                            const SizedBox(height: 30,),
                            Form(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            controller: controllerRegisterName,
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                              hintText: 'Имя',
                                              hintStyle: TextStyle(
                                                  color: Color(0xFFACB5BE),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                              filled: true,
                                              fillColor: Colors.white,
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
                                        ),
                                        const SizedBox(width: 10,),
                                        Expanded(
                                          child: TextField(
                                            controller: controllerRegisterLastName,
                                            decoration: const InputDecoration(
                                              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                              hintText: 'Фамилия',
                                              hintStyle: TextStyle(
                                                  color: Color(0xFFACB5BE),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                              filled: true,
                                              fillColor: Colors.white,
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
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15,),
                                    TextField(
                                      controller: controllerRegisterPhone,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Телефон',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    TextField(
                                      controller: controllerRegisterEmail,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Адрес электронной почты',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    TextField(
                                      controller: controllerRegisterPass,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Пароль',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    TextField(
                                      controller: controllerRegisterPass1,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Подтвердить пароль ',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    CheckboxTheme(
                                      data:  CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                      ),
                                      child: CheckboxListTile(
                                        activeColor: const Color(0xFF005BFE),
                                        title: RichText(
                                          text: TextSpan(
                                            text: 'Я прочитал и принимаю',
                                            style: TextStyle(color: const Color(0xFF1A2B47).withOpacity(0.85), fontSize: 10, fontWeight: FontWeight.w600),
                                            children: const <TextSpan>[
                                              TextSpan(text: ' Условия и Политику\nконфиденциальности', style: TextStyle(color: Color(0xFF005BFE), fontSize: 10, fontWeight: FontWeight.w600)),
                                            ],
                                          ),
                                        ),
                                        value: true,
                                        contentPadding: EdgeInsets.zero,
                                        onChanged: (newValue) {},
                                        controlAffinity:
                                        ListTileControlAffinity.leading, //  <-- leading Checkbox
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: Size(MediaQuery.of(context).size.width, 40),
                                            backgroundColor: const Color(0xFF005BFE),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(100))),
                                        onPressed: () {},
                                        child: const Text(
                                          "Зарегистрироваться",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        )),
                                  ],
                                )
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: null,
                                    icon: Image.asset("assets/icons/wk.png")
                                ),
                                const SizedBox(width: 10,),
                                IconButton(
                                    onPressed: null,
                                    icon: Image.asset("assets/icons/google-icon.png")
                                ),
                                const SizedBox(width: 10,),
                                IconButton(
                                    onPressed: null,
                                    icon: Image.asset("assets/icons/facebook-icon.png")
                                ),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: 'У вас уже есть аккаунт? ',
                                  style: const TextStyle(color: Color(0xFF1A2B47), fontSize: 12, fontWeight: FontWeight.w400),
                                  children:  <TextSpan>[
                                    TextSpan(
                                        text: ' Авторизоваться',
                                        style: const TextStyle(color: Color(0xFF005BFE), fontSize: 12, fontWeight: FontWeight.w400),
                                        recognizer: TapGestureRecognizer()..onTap = () {
                                          Navigator.of(context).pop();
                                          _showModalAuth(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                          ],
                        ),
                      );
                    });
              });
        });
  }

  void _showModalAuth(context){
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.7,
                    maxChildSize: 1,
                    minChildSize: 0.25,
                    builder: (BuildContext context, ScrollController scrollController) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          controller: controllerListViewSheetRegister,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          scrollDirection: Axis.vertical,
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.clear),
                                )
                            ),
                            const Center(child: Text("Авторизация", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w700),)),
                            const SizedBox(height: 30,),
                            Form(
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: controllerAuthEmail,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Адрес электронной почты',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    TextField(
                                      controller: controllerAuthPass,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Пароль',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 15,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: CheckboxTheme(
                                            data:  CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                            ),
                                            child: CheckboxListTile(
                                              activeColor: const Color(0xFF005BFE),
                                              title: const Text("Запомни меня" , style: TextStyle(color: Color(0xFF1A2B47), fontSize: 12, fontWeight: FontWeight.w600),),
                                              value: true,
                                              contentPadding: EdgeInsets.zero,
                                              onChanged: (newValue) {},
                                              controlAffinity:
                                              ListTileControlAffinity.leading, //  <-- leading Checkbox
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                            onPressed: (){
                                                Navigator.of(context).pop();
                                              _showModalForgotPassword(context);
                                            },
                                            child: const Text("Забыли пароль?" , style: TextStyle(color: Color(0xFF5E6D77), fontSize: 12, fontWeight: FontWeight.w500),),
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: Size(MediaQuery.of(context).size.width, 40),
                                            backgroundColor: const Color(0xFF005BFE),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(100))),
                                        onPressed: null,
                                        child: const Text(
                                          "Войти",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        )),
                                  ],
                                )
                            ),
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: null,
                                    icon: Image.asset("assets/icons/wk.png")
                                ),
                                const SizedBox(width: 10,),
                                IconButton(
                                    onPressed: null,
                                    icon: Image.asset("assets/icons/google-icon.png")
                                ),
                                const SizedBox(width: 10,),
                                IconButton(
                                    onPressed: null,
                                    icon: Image.asset("assets/icons/facebook-icon.png")
                                ),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Center(
                              child: Column(
                                children: [
                                  const Text("Еще не регистрировались?", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 12, fontWeight: FontWeight.w400),),
                                  TextButton(
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                        _showModalRegister(context);
                                      },
                                      child: const Text("Зарегистрироваться", textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF005BFE), fontSize: 12, fontWeight: FontWeight.w400))
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                          ],
                        ),
                      );
                    });
              });
        });
  }

  void _showModalForgotPassword(context){
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.45,
                    maxChildSize: 1,
                    minChildSize: 0.25,
                    builder: (BuildContext context, ScrollController scrollController) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          controller: controllerListViewSheetRegister,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          scrollDirection: Axis.vertical,
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.clear),
                                )
                            ),
                            const Center(child: Text("Забыли пароль?", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w700),)),
                            const SizedBox(height: 10,),
                            const Center(child: Text("Укажите свой адрес электронной почты", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 12, fontWeight: FontWeight.w400),)),
                            const SizedBox(height: 30,),
                            Form(
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: controllerForgotPassEmail,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Адрес электронной почты',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: Size(MediaQuery.of(context).size.width, 40),
                                            backgroundColor: const Color(0xFF005BFE),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(100))),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          showDialog(
                                              barrierColor: Colors.grey.withOpacity(0.5),
                                              context: context,
                                              builder: (BuildContext context) {
                                                return const DialogCheckEmail();
                                              });
                                        },
                                        child: const Text(
                                          "Отправить",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        )),
                                  ],
                                )
                            ),
                            const SizedBox(height: 20,),
                          ],
                        ),
                      );
                    });
              });
        });
  }

  void _showModalChangeNewPassword(context){
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
        ),
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.55,
                    maxChildSize: 1,
                    minChildSize: 0.25,
                    builder: (BuildContext context, ScrollController scrollController) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: ListView(
                          controller: controllerListViewSheetRegister,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          scrollDirection: Axis.vertical,
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.clear),
                                )
                            ),
                            const Center(child: Text("Новый пароль", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w700),)),
                            const SizedBox(height: 10,),
                            const Center(child: Text("Создайте пароль , минимум число букв и значков 6", style: TextStyle(color: Color(0xFF5E6D77), fontSize: 12, fontWeight: FontWeight.w400),)),
                            const SizedBox(height: 30,),
                            Form(
                                child: Column(
                                  children: [
                                    TextField(
                                      controller: controllerChangePassEmail,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Адрес электронной почты',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    TextField(
                                      controller: controllerChangePassPass,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                        hintText: 'Подтвердить пароль ',
                                        hintStyle: TextStyle(
                                            color: Color(0xFFACB5BE),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                        filled: true,
                                        fillColor: Colors.white,
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFACB5BE)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(100.0)),
                                          borderSide: BorderSide(color: Color(0xFFD80027)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            fixedSize: Size(MediaQuery.of(context).size.width, 40),
                                            backgroundColor: const Color(0xFF005BFE),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(100))),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          showDialog(
                                              barrierColor: Colors.grey.withOpacity(0.5),
                                              context: context,
                                              builder: (BuildContext context) {
                                                return const DialogCheckNewPass();
                                              });
                                        },
                                        child: const Text(
                                          "Создать",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                          ),
                                        )),
                                  ],
                                )
                            ),
                            const SizedBox(height: 20,),
                          ],
                        ),
                      );
                    });
              });
        });
  }
}

