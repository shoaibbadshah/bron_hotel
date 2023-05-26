import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({Key? key}) : super(key: key);

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Выберите валюту", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w600),),
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF1A2B47),),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          ListTile(
            tileColor: const Color(0xFF1A2B47).withOpacity(0.1),
            leading: Image.asset("assets/icons/currencyflag.png"),
            title: Text("AMD", style: TextStyle(color: const Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Image.asset("assets/icons/currencyflag.png"),
            title: Text("AMD", style: TextStyle(color: const Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Image.asset("assets/icons/currencyflag.png"),
            title: Text("AMD", style: TextStyle(color: const Color(0xFF1A2B47).withOpacity(0.85), fontSize: 16, fontWeight: FontWeight.w500),),
          ),
        ],
      ),
    );
  }
}
