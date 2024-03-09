import 'package:bron_hotel/pages/flights/tickets-page.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketsFilterPage extends StatefulWidget {
  const TicketsFilterPage({Key? key}) : super(key: key);

  @override
  State<TicketsFilterPage> createState() => _TicketsFilterPageState();
}

class _TicketsFilterPageState extends State<TicketsFilterPage> {
  TextEditingController textEditingControllerAirlines = TextEditingController();
  TextEditingController textEditingControllerAirlinesTransfer = TextEditingController();
  TextEditingController textEditingControllerAgencies = TextEditingController();

  String transfersRadioValue = "";
  bool switchNoAirportChange= false;
  bool switchNoOvernightTransfers= false;
  bool isChecked = false;
  RangeValues currentRangeValues =  const RangeValues(40, 80);
  double currentSliderValue = 100;
  bool showSeeAllAirlines = false;


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
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
        ),
        backgroundColor: Color(0xFF1A2B47),
        centerTitle: true,
        title: Text(
          "Фильтры",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TicketsPage()));
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Text(
                    "Готово",
                    style: TextStyle(
                      color: Color(0xFFD9D9D9),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          buildTransfers(),
          SizedBox(height: 15,),
          buildDepartureAndArrival(),
          SizedBox(height: 15,),
          buildBaggage(),
          SizedBox(height: 15,),
          buildAirlines(),
          SizedBox(height: 15,),
          buildAlliances(),
          SizedBox(height: 15,),
          buildDateRout(),
          SizedBox(height: 15,),
          buildAirlinesTransfer(),
          SizedBox(height: 15,),
          buildAirlinesTransfer1(),
          SizedBox(height: 15,),
          buildAgencies(),
          SizedBox(height: 15,),
          buildAgencies1(),
          SizedBox(height: 15,),
          Column(
            children: [
              Container(
                child: ExpandableTheme(
                  data: ExpandableThemeData(
                    iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                    iconPadding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  child: ExpandablePanel(
                    header: Text(
                      "Сортировка",
                      style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.85),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    collapsed: Divider(color: Color(0xFF5E6D77),),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(color: Color(0xFF5E6D77),),
                        buildSortingValue("Сначала рекомендуемые", transfersRadioValue),
                        buildSortingValue("Сначала дешевые", transfersRadioValue),
                        buildSortingValue("Время вылета", transfersRadioValue),
                        buildSortingValue("Время прибытия", transfersRadioValue),
                        buildSortingValue("Длительность пересадок", transfersRadioValue),
                        buildSortingValue("Длительность поездки", transfersRadioValue),
                        buildSortingValue("Рейтинг", transfersRadioValue),
                        buildSortingValue("Популярность", transfersRadioValue),
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
          )
        ],
      ),
    );
  }

  Row buildSortingValue(String title, groupValue) {
    return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: Color(0xFF1A2B47).withOpacity(0.75),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Radio(
                            activeColor: Color(0xFF005BFE),
                            value: "1",
                            fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFF005BFE)),
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value.toString();
                              });
                            },
                          )
                        ],
                      );
  }

  Column buildAgencies() {
    return Column(
          children: [
            Container(
              child: ExpandableTheme(
                data: ExpandableThemeData(
                  iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                  iconPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: ExpandablePanel(
                  header: Text(
                    "Агентства",
                    style: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  collapsed: Divider(color: Color(0xFF5E6D77),),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(color: Color(0xFF5E6D77),),
                      SizedBox(height: 5,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          controller: textEditingControllerAgencies,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Название агентства',
                            prefixIcon:Image.asset("assets/icons/search-svgrepo.png"),
                            hintStyle: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(color: Color(0xFF5E6D77)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(color: Color(0xFF5E6D77)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      CheckboxTheme(
                        data: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            )
                        ),
                        child: CheckboxListTile(
                          activeColor: Colors.blue,
                          title:  Text(
                            "Выбрать все",
                            style: TextStyle(
                                color: Color(0xFF1A2B47).withOpacity(0.75),
                                fontWeight: FontWeight.w500,
                                fontSize: 13
                            ),
                          ),
                          value: false,
                          contentPadding: EdgeInsets.zero,
                          onChanged: (newValue) {},
                          controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                        ),
                      ),
                      _buildCheckboxAlliances("Aviakassa", "4890₽",  true),
                      _buildCheckboxAlliances("City.Travel", "4890₽",  true),
                      _buildCheckboxAlliances("FlyOne", "4890₽",  true),
                      _buildCheckboxAlliances("KupiBilet.ru", "4890₽",  true),
                      _buildCheckboxAlliances("OZON", "4890₽",  true),
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
        );
  }

  Column buildAgencies1() {
    return Column(
      children: [
        Container(
          child: ExpandableTheme(
            data: ExpandableThemeData(
              iconColor: Color(0xFF1A2B47).withOpacity(0.85),
              iconPadding: EdgeInsets.symmetric(horizontal: 20),
            ),
            child: ExpandablePanel(
              header: Text(
                "Агентства",
                style: TextStyle(
                    color: Color(0xFF1A2B47).withOpacity(0.85),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              collapsed: Divider(color: Color(0xFF5E6D77),),
              expanded: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(color: Color(0xFF5E6D77),),
                  CheckboxTheme(
                    data: CheckboxThemeData(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        )
                    ),
                    child: CheckboxListTile(
                      activeColor: Colors.blue,
                      title:  Text(
                        "Выбрать все",
                        style: TextStyle(
                            color: Color(0xFF1A2B47).withOpacity(0.75),
                            fontWeight: FontWeight.w500,
                            fontSize: 13
                        ),
                      ),
                      value: false,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (newValue) {},
                      controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                    ),
                  ),
                  _buildCheckboxAlliances("Qiwi кошелек", "4890₽",  true),
                  _buildCheckboxAlliances("Яндекс.Деньги", "4890₽",  true),
                  _buildCheckboxAlliances("vКонтакт", "4890₽",  true),
                  _buildCheckboxAlliances("Ревоплюс", "4890₽",  true),
                  _buildCheckboxAlliances("По карте", "4890₽",  true),
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
    );
  }

  Column buildAirlinesTransfer1() {
    return Column(
          children: [
            ExpandableTheme(
              data: ExpandableThemeData(
                iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                iconPadding: EdgeInsets.symmetric(horizontal: 20),
              ),
              child: ExpandablePanel(
                header: Text(
                  "Аэропорты пересадок 1",
                  style: TextStyle(
                      color: Color(0xFF1A2B47).withOpacity(0.85),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                collapsed: Divider(color: Color(0xFF5E6D77),),
                expanded: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(color: Color(0xFF5E6D77),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Всего",
                          style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "До 135 000₽",
                          style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    SliderTheme(
                      data: SliderThemeData(
                        trackHeight: 1,
                      ),
                      child: Slider(
                        activeColor: Color(0xFf005BFE),
                        inactiveColor: Color(0xFFDFE2E6),
                        value: currentSliderValue,
                        max: 100,
                        divisions: 5,
                        label: currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            currentSliderValue = value;
                          });},
                      ),
                    ),


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
          ],
        );
  }

  Column buildAirlinesTransfer() {
    return Column(
          children: [
            Container(
              child: ExpandableTheme(
                data: ExpandableThemeData(
                  iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                  iconPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: ExpandablePanel(
                  header: Text(
                    "Аэропорты пересадок",
                    style: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  collapsed: Divider(color: Color(0xFF5E6D77),),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(color: Color(0xFF5E6D77),),
                      SizedBox(height: 5,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          controller: textEditingControllerAirlinesTransfer,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Аэропорт, город, страна, код',
                            prefixIcon:Image.asset("assets/icons/search-svgrepo.png"),
                            hintStyle: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(color: Color(0xFF5E6D77)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(color: Color(0xFF5E6D77)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      CheckboxTheme(
                        data: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                            )
                        ),
                        child: CheckboxListTile(
                          activeColor: Colors.blue,
                          title:  Text(
                            "Выбрать все",
                            style: TextStyle(
                                color: Color(0xFF1A2B47).withOpacity(0.75),
                                fontWeight: FontWeight.w500,
                                fontSize: 13
                            ),
                          ),
                          value: false,
                          contentPadding: EdgeInsets.zero,
                          onChanged: (newValue) {},
                          controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                        ),
                      ),
                      _buildCheckboxAlliances("Амстердам, Схипхол,Нидерланды", "4890₽",  true),
                      _buildCheckboxAlliances("Амстердам, Схипхол,Нидерланды", "4890₽",  true),
                      _buildCheckboxAlliances("Амстердам, Схипхол,Нидерланды", "4890₽",  true),
                      _buildCheckboxAlliances("Амстердам, Схипхол,Нидерланды", "4890₽",  true),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showSeeAllAirlines = !showSeeAllAirlines;
                          });
                        },
                        child: Row(
                          children: [
                            const Text(
                              "Показать всё",
                              style: TextStyle(
                                  color: Color(0xFF005BFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 10,),
                            showSeeAllAirlines
                                ? const Icon(Icons.arrow_drop_up, color: Color(0xFF005BFE),)
                                : const Icon(Icons.arrow_drop_down, color: Color(0xFF005BFE),)
                          ],
                        ),
                      ),


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
        );
  }

  Column buildDateRout() {
    return Column(
          children: [
            Container(
              child: ExpandableTheme(
                data: ExpandableThemeData(
                  iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                  iconPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: ExpandablePanel(
                  header: Text(
                    "Время в пути",
                    style: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  collapsed: Divider(color: Color(0xFF5E6D77),),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(color: Color(0xFF5E6D77),),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "Всего",
                            style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "До 48ч",
                            style: TextStyle(color: Color(0xFF1A2B47).withOpacity(0.75), fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      SliderTheme(
                        data: SliderThemeData(
                            trackHeight: 1,
                        ),
                        child: Slider(
                          activeColor: Color(0xFf005BFE),
                          inactiveColor: Color(0xFFDFE2E6),
                        value: currentSliderValue,
                        max: 100,
                        divisions: 5,
                        label: currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                          currentSliderValue = value;
                          });},
                        ),
                      ),


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
        );
  }

  Column buildAlliances() {
    return Column(
          children: [
            Container(
              child: ExpandableTheme(
                data: ExpandableThemeData(
                  iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                  iconPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: ExpandablePanel(
                  header: Text(
                    "Альянсы",
                    style: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  collapsed: Divider(color: Color(0xFF5E6D77),),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(color: Color(0xFF5E6D77),),
                      _buildCheckboxAlliances("S7 Airlines", "4890₽",  true),
                      _buildCheckboxAlliances("Utair company", "4890₽",true),
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
        );
  }

  Column buildAirlines() {
    return Column(
          children: [
            Container(
              child: ExpandableTheme(
                data: ExpandableThemeData(
                  iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                  iconPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: ExpandablePanel(
                  header: Text(
                    "Авиакомпании",
                    style: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  collapsed: Divider(color: Color(0xFF5E6D77),),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(color: Color(0xFF5E6D77),),
                      _buildSwitch("Без лоукостеров", !switchNoAirportChange, 14),
                      _buildSwitch("Только одна авиакомпанияв одном билете", !switchNoAirportChange, 14),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          controller: textEditingControllerAirlines,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Авиакомпания, код ИАТА',
                            prefixIcon:Image.asset("assets/icons/search-svgrepo.png"),
                            hintStyle: TextStyle(
                                color: Color(0xFFC4C4C4),
                                fontSize: 13,
                                fontWeight: FontWeight.w500),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(color: Color(0xFF5E6D77)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(color: Color(0xFF5E6D77)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      CheckboxTheme(
                        data: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                          )
                        ),
                        child: CheckboxListTile(
                          activeColor: Colors.blue,
                          title:  Text(
                            "Выбрать все",
                            style: TextStyle(
                                color: Color(0xFF1A2B47).withOpacity(0.75),
                                fontWeight: FontWeight.w500,
                                fontSize: 13
                            ),
                          ),
                          value: false,
                          contentPadding: EdgeInsets.zero,
                          onChanged: (newValue) {},
                          controlAffinity:
                          ListTileControlAffinity.leading, //  <-- leading Checkbox
                        ),
                      ),
                      _buildCheckboxAirlines("S7 Airlines", "4890₽", "assets/images/s7.png", true),
                      _buildCheckboxAirlines("Utair company", "4890₽", "assets/images/utair.png" ,true),
                      _buildCheckboxAirlines("LOT company", "4890₽", "assets/images/airs.png",  true),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showSeeAllAirlines = !showSeeAllAirlines;
                          });
                        },
                        child: Row(
                          children: [
                            const Text(
                              "Показать всё",
                              style: TextStyle(
                                  color: Color(0xFF005BFE),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 10,),
                            showSeeAllAirlines
                                ? const Icon(Icons.arrow_drop_up, color: Color(0xFF005BFE),)
                                : const Icon(Icons.arrow_drop_down, color: Color(0xFF005BFE),)
                          ],
                        ),
                      ),
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
        );
  }

  Row _buildCheckboxAirlines(String title, price, icon, bool isChecked) {
    return Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Image.asset(icon),
                                SizedBox(width: 8,),
                                Text(
                                  title,
                                  style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  price,
                                  style: TextStyle(
                                    color: Color(0xFFACB5BE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(
                                  child: CheckboxTheme(
                                    data: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5)
                                        )
                                    ),
                                    child: CheckboxListTile(
                                      activeColor: Colors.blue,
                                      title:  Text(""),
                                      value: false,
                                      contentPadding: EdgeInsets.zero,
                                      onChanged: (newValue) {},
                                      controlAffinity:
                                      ListTileControlAffinity.trailing, //  <-- leading Checkbox
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
  }

  Row _buildCheckboxAlliances(String title, price, bool isChecked) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: TextStyle(
              color: Color(0xFF1A2B47).withOpacity(0.75),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                price,
                style: TextStyle(
                  color: Color(0xFFACB5BE),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: CheckboxTheme(
                  data: CheckboxThemeData(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      )
                  ),
                  child: CheckboxListTile(
                    activeColor: Colors.blue,
                    title:  Text(""),
                    value: false,
                    contentPadding: EdgeInsets.zero,
                    onChanged: (newValue) {},
                    controlAffinity:
                    ListTileControlAffinity.trailing, //  <-- leading Checkbox
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
  Column buildBaggage() {
    return Column(
          children: [
            Container(
              child: ExpandableTheme(
                data: ExpandableThemeData(
                  iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                  iconPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: ExpandablePanel(
                  header: Text(
                    "Багаж",
                    style: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  collapsed: Divider(color: Color(0xFF5E6D77),),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(color: Color(0xFF5E6D77),),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              "Багаж включен",
                              style: TextStyle(
                                color: Color(0xFF1A2B47).withOpacity(0.75),
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "4890₽",
                                  style: TextStyle(
                                    color: Color(0xFFACB5BE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Radio(
                                  activeColor: Color(0xFF005BFE),
                                  value: "bagazh",
                                  fillColor: MaterialStateColor.resolveWith(
                                          (states) => Color(0xFF005BFE)),
                                  groupValue: transfersRadioValue,
                                  onChanged: (value) {
                                    setState(() {
                                      transfersRadioValue = value.toString();
                                    });
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(color: Color(0xFFD9D9D9),),
                      _buildSwitch("Без смены аэропорта", !switchNoAirportChange, 14)

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
        );
  }

  Column buildDepartureAndArrival() {
    return Column(
          children: [
            Container(
              child: ExpandableTheme(
                data: ExpandableThemeData(
                    iconColor: Color(0xFF1A2B47).withOpacity(0.85),
                    iconPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: ExpandablePanel(
                  header: Text(
                    "Вылет и прибытие",
                    style: TextStyle(
                        color: Color(0xFF1A2B47).withOpacity(0.85),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  collapsed: Divider(color: Color(0xFF5E6D77),),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(color: Color(0xFF5E6D77),),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Отправление",
                                  style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Text(
                                  "00:00-00:00",
                                  style: TextStyle(
                                    color: Color(0xFFACB5BE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SliderTheme(
                            data: SliderThemeData(
                                trackHeight: 1
                            ),
                            child: RangeSlider(
                              values: currentRangeValues,
                              activeColor: Color(0xFf005BFE),
                              inactiveColor: Color(0xFFDFE2E6),
                              max: 100,
                              divisions: 5,
                              labels: RangeLabels(
                                currentRangeValues.start.round().toString(),
                                currentRangeValues.end.round().toString(),
                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  currentRangeValues = values;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "Прибытие",
                                  style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              Expanded(
                                flex: 1,
                                child: Text(
                                  "00:00-00:00",
                                  style: TextStyle(
                                    color: Color(0xFFACB5BE),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SliderTheme(
                            data: SliderThemeData(
                                trackHeight: 1
                            ),
                            child: RangeSlider(
                              values: currentRangeValues,
                              activeColor: Color(0xFf005BFE),
                              inactiveColor: Color(0xFFDFE2E6),
                              max: 100,
                              divisions: 5,
                              labels: RangeLabels(
                                currentRangeValues.start.round().toString(),
                                currentRangeValues.end.round().toString(),
                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  currentRangeValues = values;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Дата прибытия",
                            style: TextStyle(
                              color: Color(0xFF1A2B47).withOpacity(0.75),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "24 сентября , сб",
                                  style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "4890₽",
                                      style: TextStyle(
                                        color: Color(0xFFACB5BE),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Radio(
                                      activeColor: Color(0xFF005BFE),
                                      value: "data",
                                      fillColor: MaterialStateColor.resolveWith(
                                              (states) => Color(0xFF005BFE)),
                                      groupValue: transfersRadioValue,
                                      onChanged: (value) {
                                        setState(() {
                                          transfersRadioValue = value.toString();
                                        });
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "24 сентября , сб",
                                  style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "3090₽",
                                      style: TextStyle(
                                        color: Color(0xFFACB5BE),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Radio(
                                      activeColor: Color(0xFF005BFE),
                                      value: "data1",
                                      fillColor: MaterialStateColor.resolveWith(
                                              (states) => Color(0xFF005BFE)),
                                      groupValue: transfersRadioValue,
                                      onChanged: (value) {
                                        setState(() {
                                          transfersRadioValue = value.toString();
                                        });
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "25 сентября , вс",
                                  style: TextStyle(
                                    color: Color(0xFF1A2B47).withOpacity(0.75),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2290₽",
                                      style: TextStyle(
                                        color: Color(0xFFACB5BE),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Radio(
                                      activeColor: Color(0xFFACB5BE),
                                      value: "data2",
                                      fillColor: MaterialStateColor.resolveWith(
                                              (states) => Color(0xFF005BFE)),
                                      groupValue: transfersRadioValue,
                                      onChanged: (value) {
                                        setState(() {
                                          transfersRadioValue = value.toString();
                                        });
                                      },
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
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
        );
  }

  Column buildTransfers() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Пересадки",
                  style: TextStyle(
                    color: Color(0xFF1A2B47).withOpacity(0.85),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(color: Color(0xFF5E6D77),),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "Без пересадок",
                        style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.75),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "4890₽",
                            style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Radio(
                            activeColor: Color(0xFF005BFE),
                            value: "transfers",
                            fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFF005BFE)),
                            groupValue: transfersRadioValue,
                            onChanged: (value) {
                              setState(() {
                                transfersRadioValue = value.toString();
                              });
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "1 пересадка",
                        style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.75),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "3090₽",
                            style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Radio(
                            activeColor: Color(0xFF005BFE),
                            value: "transfers1",
                            fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFF005BFE)),
                            groupValue: transfersRadioValue,
                            onChanged: (value) {
                              setState(() {
                                transfersRadioValue = value.toString();
                              });
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        "2 пересадка",
                        style: TextStyle(
                          color: Color(0xFF1A2B47).withOpacity(0.75),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "2290₽",
                            style: TextStyle(
                              color: Color(0xFFACB5BE),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Radio(
                            activeColor: Color(0xFFACB5BE),
                            value: "transfers2",
                            fillColor: MaterialStateColor.resolveWith(
                                    (states) => Color(0xFF005BFE)),
                            groupValue: transfersRadioValue,
                            onChanged: (value) {
                              setState(() {
                                transfersRadioValue = value.toString();
                              });
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Длительность пересадки",
                    style: TextStyle(
                      color: Color(0xFF1A2B47).withOpacity(0.75),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "От 2ч до 42ч",
                        style: TextStyle(
                          color: Color(0xFF005BFE),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "4ч",
                      style: TextStyle(
                        color: Color(0xFF005BFE),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "8ч",
                      style: TextStyle(
                        color: Color(0xFF005BFE),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "12ч",
                      style: TextStyle(
                        color: Color(0xFF005BFE),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 1
                  ),
                  child: RangeSlider(
                    values: currentRangeValues,
                    activeColor: Color(0xFf005BFE),
                    inactiveColor: Color(0xFFDFE2E6),
                    max: 100,
                    divisions: 5,
                    labels: RangeLabels(
                      currentRangeValues.start.round().toString(),
                      currentRangeValues.end.round().toString(),
                    ),
                    onChanged: (RangeValues values) {
                      setState(() {
                        currentRangeValues = values;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            _buildSwitch("Без смены аэропорта", !switchNoAirportChange, 16),
            _buildSwitch("Без ночных пересадок", switchNoAirportChange, 16),
          ],
        );
  }

  Row _buildSwitch(String title, bool isActive, double fontSize) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: fontSize,
                      color: Color(0xFF1A2B47).withOpacity(0.75),
                      fontWeight: FontWeight.w500,),
                  ),
                ),
                Transform.scale(
                  scale: 0.9,
                  child: CupertinoSwitch(
                    activeColor: Color(0xFF005BFE),
                    trackColor: Color(0xFF1A2B47).withOpacity(0.25),
                    value: isActive,
                    onChanged: (value) {
                      setState(() {
                        isActive = value;
                      });
                    },
                  ),
                ),
              ],
            );
  }
}
