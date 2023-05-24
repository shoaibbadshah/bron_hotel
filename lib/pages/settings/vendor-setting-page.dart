import 'package:bron_hotel/pages/about/support-page.dart';
import 'package:bron_hotel/pages/blog/blog-page.dart';
import 'package:bron_hotel/pages/vendor/vendor-start-page.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorSettingPage extends StatefulWidget {
  const VendorSettingPage({Key? key}) : super(key: key);

  @override
  State<VendorSettingPage> createState() => _VendorSettingPageState();
}

class _VendorSettingPageState extends State<VendorSettingPage> {
  bool isExpanded = false;
  ExpandableController expandableController = ExpandableController();
  List<String> headerName = [
    "Управление отелем",
    "Управление туром",
    "Управление места",
    "Управление автомобилем",
    "Управление лодкой",
    "Управление событием",
  ];
  @override
  void initState() {
    super.initState();
    expandableController.addListener(() {
      setState(() {
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xFF1A2B47), shape: BoxShape.circle),
              child: Text(
                "C",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            title: Text(
              "Светлана Исаева",
              style: TextStyle(
                  color: Color(0xFF1A2B47),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              "SvetaIsaeva89@mail.ru",
              style: TextStyle(
                  color: Color(0xFF005BFE),
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
            trailing: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => VendorStartPage()));
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                    color: Color(0xFf005BFE),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Vendor",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
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
                      decoration: BoxDecoration(
                          color: Color(0xFF005BFE),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(3),
                              bottomRight: Radius.circular(3))),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Панель приборов",
                      style: TextStyle(
                          color: Color(0xFF005BFE),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "История бронирования",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BlogPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Блог сообщества",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Избранные",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Мой бумажник",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ExpandableTheme(
                        data: ExpandableThemeData(
                            headerAlignment: ExpandablePanelHeaderAlignment.center,
                            iconColor: Colors.white,
                            iconPadding: EdgeInsets.only(right: 10),
                            iconSize: 30,
                            hasIcon: false
                        ),
                        child: ExpandablePanel(
                          controller: expandableController,
                          header: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Управление",
                                    style: TextStyle(
                                        color: Color(0xFF1A2B47),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                expandableController.expanded
                                    ? Icon(Icons.arrow_drop_up, color: Color(0xFFD80027),)
                                    : Icon(Icons.arrow_drop_down, color: Color(0xFF005BFE),)
                              ],
                            ),
                          ),
                          collapsed: Container(),
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Divider(
                                color: Color(0xFFE2E2E2),
                              ),
                              for (var index in Iterable.generate(headerName.length))
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Text(
                                        "${headerName[index]}",
                                        style: TextStyle(
                                            color: Color(0xFF1A2B47),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    index == headerName.length - 1
                                        ? Container()
                                        : Divider(
                                      color: Color(0xFFE2E2E2),
                                    )
                                  ],
                                )
                            ],
                          ),
                          builder: (_, collapsed, expanded) {
                            return Expandable(
                              collapsed: collapsed,
                              expanded: expanded,
                              theme: const ExpandableThemeData(
                                  crossFadePoint: 0),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Отчет о бронировании",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Отчет о запросе",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Выплаты",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Проверки",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
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
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Сменить пароль",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Color(0xFFE2E2E2),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SupportPage()));
              });
            },
            contentPadding: EdgeInsets.zero,
            title: Column(
              children: [
                Row(
                  children: [
                    Container(),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/icons/reference.png"),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Справка",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(color: Color(0xFFE2E2E2)),
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
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/icons/exit.png"),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Выйти",
                      style: TextStyle(
                          color: Color(0xFF1A2B47),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
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