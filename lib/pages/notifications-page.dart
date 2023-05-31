import 'package:flutter/material.dart';

import '../../widgets/expandable-text.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Уведомления",
          style: TextStyle(
              color: Color(0xFF1A2B47),
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF1A2B47),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: const [
          NotificationItem(),
          Divider(),
          NotificationItem(),
          Divider()
        ],
      ),
    );
  }

}

class NotificationItem extends StatefulWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  _NotificationItemState createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: const [
            SizedBox(height: 15),
            CircleAvatar(
              backgroundColor: Color(0xFFD9D9D9),
              radius: 20,
            ),
          ],
        ),
        const SizedBox(height: 35),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: ExpandableText(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Pellentesque scelerisque efficitur posuere. Curabitur '
                  'tincidunt placerat diam ac efficitur. Cras rutrum egestas '
                  'nisl vitae pulvinar. Donec id mollis diam, id hendrerit '
                  'neque. Donec accumsan efficitur libero, vitae feugiat odio fringilla ac. '
                  'Aliquam a turpis bibendum, varius erat dictum, feugiat libero. '
                  'Nam et dignissim nibh. Morbi elementum varius elit, at dignissim '
                  'ex accumsan a Nam et dignissim nibh. Morbi elementum varius elit, '
                  'at dignissim ex accumsan a',
                  trimLines: 3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
