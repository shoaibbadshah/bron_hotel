import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Выберите язык", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w600),),
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Icon(Icons.arrow_back_ios, color: Color(0xFF1A2B47),),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          ListTile(
            tileColor: Color(0xFF1A2B47).withOpacity(0.1),
            leading: Image.asset("assets/icons/flagen.png"),
            title: Text("English (UK)", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flagusa.png"),
            title: Text("English (USA)", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flagrussia.png"),
            title: Text("Russian", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flagitaly.png"),
            title: Text("Italian", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flaggreek.png"),
            title: Text("Grreek", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Image.asset("assets/icons/flagkorean.png"),
            title: Text("Korean", style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
        ],
      ),
    );
  }
}
