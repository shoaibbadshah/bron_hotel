import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ScrollController controllerListView = ScrollController();

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
  TextEditingController controllerDate = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        "Аккаунт",
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
          SizedBox(
            child: Row(
              children: [
                Image.asset("assets/images/girl-avatar.png"),
                const SizedBox(width: 20,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                           Text("Светлана Исаева", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w600),),
                           SizedBox(height: 8,),
                           Text("SvetaIsaeva89@mail.ru", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 12, fontWeight: FontWeight.w400),),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/pencil-edit.png"),
                          TextButton(
                            onPressed: (){},
                              child: const Text(
                                "Изменить фото",
                                style: TextStyle(
                                    color: Color(0xFF1A2B47),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline
                                ),
                              )
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
               Text("Имя по документам", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
               SizedBox(height: 10,),
               Text(
                "Имя, указанное в загранпаспорте, водительском\nудостоверении или другом выездном документе.",
                style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 2
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Имя", style: TextStyle(color: Color(0xFFACB5BE), fontSize: 10, fontWeight: FontWeight.w500),),
                    ),
                    const SizedBox(height: 5,),
                    TextField(
                      controller: controllerName,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        hintText: 'Светлана',
                        hintStyle: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xFF5E6D77)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xFF5E6D77)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("Фамилия", style: TextStyle(color: Color(0xFFACB5BE), fontSize: 10, fontWeight: FontWeight.w500),),
                    ),
                    const SizedBox(height: 5,),
                    TextField(
                      controller: controllerName,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        hintText: 'Исаева',
                        hintStyle: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xFF5E6D77)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Color(0xFF5E6D77)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          const Text("Дата рождения", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
          const SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("Фамилия", style: TextStyle(color: Color(0xFFACB5BE), fontSize: 10, fontWeight: FontWeight.w500),),
              ),
              const SizedBox(height: 5,),
              TextField(
                controller: controllerDate,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  hintText: '01.08.2022',
                  hintStyle: const TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  suffixIcon: Image.asset("assets/icons/calendar.png"),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFF5E6D77)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFF5E6D77)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
               Text("Дата рождения", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
               SizedBox(height: 10,),
               Text(
                "Укажите адрес, к которому у вас есть\nпостоянный доступ.",
                style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 2
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("Электронный адрес", style: TextStyle(color: Color(0xFFACB5BE), fontSize: 10, fontWeight: FontWeight.w500),),
              ),
              const SizedBox(height: 5,),
              TextField(
                controller: controllerEmail,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  hintText: 'svetaisaeva89@mail.ru',
                  hintStyle: TextStyle(
                      color: Color(0xFF1A2B47),
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFF5E6D77)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFF5E6D77)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Column(
            children: [
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width / 2, 42),
                        backgroundColor: const Color(0xFF005BFE),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {},
                    child: const Text(
                      "Сохранить",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}
