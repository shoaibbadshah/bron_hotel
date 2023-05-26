import 'package:bron_hotel/pages/about/contact-us-page.dart';
import 'package:bron_hotel/pages/blog/blog-start-page.dart';
import 'package:bron_hotel/pages/settings/wallet-page.dart';
import 'package:flutter/material.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xFF1A2B47),
                shape: BoxShape.circle
              ),
              child: const Text("C", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),),
            ),
            title: const Text("Светлана Исаева", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
            subtitle: const Text("SvetaIsaeva89@mail.ru", style: TextStyle(color: Color(0xFF005BFE), fontSize: 12, fontWeight: FontWeight.w400),),
            trailing: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BlogStartPage()));
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0xFf005BFE),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Text("Customer", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),),
              ),
            ),
          ),
          const SizedBox(height: 20,),
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
                  children: const [
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
                    const Text("История бронирования", style: TextStyle(color: Color(0xFF005BFE), fontSize: 16, fontWeight: FontWeight.w600),),
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
                    const Text("Блог сообщества", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w500),),
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
                    const Text("Избранные", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w500),),
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
                    const Text("Язык", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w500),),
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
                    const Text("Валюта", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w500),),
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
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const WalletPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(width: 20,),
                    const Text("Кошелек", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w500),),
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
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactUsPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(width: 20,),
                    Image.asset("assets/icons/reference.png"),
                    const SizedBox(width: 5,),
                    const Text("Справка", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w500),),
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
              children: [
                Row(
                  children: [
                    Container(),
                    const SizedBox(width: 20,),
                    Image.asset("assets/icons/exit.png"),
                    const SizedBox(width: 15,),
                    const Text("Выйти", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
