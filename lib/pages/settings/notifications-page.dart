import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/expandable-text.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Уведомления", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w600),),
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
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(height: 35,)
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ExpandableText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque efficitur posuere. Curabitur tincidunt placerat diam ac efficitur. Cras rutrum egestas nisl vitae pulvinar. Donec id mollis diam, id hendrerit neque. Donec accumsan efficitur libero, vitae feugiat odio fringilla ac. Aliquam a turpis bibendum, varius erat dictum, feugiat libero. Nam et dignissim nibh. Morbi elementum varius elit, at dignissim ex accumsan a Nam et dignissim nibh. Morbi elementum varius elit, at dignissim ex accumsan a',
                        trimLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(height: 35,)
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ExpandableText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque scelerisque efficitur posuere. Curabitur tincidunt placerat diam ac efficitur. Cras rutrum egestas nisl vitae pulvinar. Donec id mollis diam, id hendrerit neque. Donec accumsan efficitur libero, vitae feugiat odio fringilla ac. Aliquam a turpis bibendum, varius erat dictum, feugiat libero. Nam et dignissim nibh. Morbi elementum varius elit, at dignissim ex accumsan a Nam et dignissim nibh. Morbi elementum varius elit, at dignissim ex accumsan a',
                        trimLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
