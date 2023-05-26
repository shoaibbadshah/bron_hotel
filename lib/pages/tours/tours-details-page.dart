import 'package:bron_hotel/widgets/similar-hotels-widget.dart';
import 'package:flutter/material.dart';

import 'flights-selection-page.dart';


class ToursDetailsPage extends StatefulWidget {
  const ToursDetailsPage({Key? key}) : super(key: key);

  @override
  State<ToursDetailsPage> createState() => _ToursDetailsPageState();
}

class _ToursDetailsPageState extends State<ToursDetailsPage> {
  List<HotelsNameRating> listHotelsName = [
    HotelsNameRating("Pullman Maldives Maamutaa ", "4,97"),
    HotelsNameRating("Outrigger Konotta Maldives Resort ", "4,97"),
    HotelsNameRating("Raffles Maldives Meradhoo", "4,97"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
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
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Мальдивы",
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
              onPressed: null,
              icon: Image.asset("assets/icons/filters.png")
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "Туры в Beach Spa Resort (Adults Only 18+)",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "4,97",
                              style: TextStyle(
                                  color: Color(0xFFFA5636),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14
                              ),
                            ),
                            SizedBox(width: 3,),
                            Icon(Icons.star, color: Color(0xFFFA5636), size: 18,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 30),
                  child: Text(
                    "Сенсационный яркий и легкий дом отдыха с видом на кикладскую архитектуру и беспрепятственным видом на Эгейское море рядом с деревней Лутра.Дом вдали от дома на нетронутом острове Китнос.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    "Собственный пляж , Клубный отель,\nСПА Центр , Отель для взрослых",
                    style: TextStyle(
                        color: Color(0xFF5F90F3),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 171,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/tours-image.png"),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: Color(0xFFFA5636),
                                shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Text("7,4", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                                color: Color(0xFF005BFE),
                                shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Text("%", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Text(
                                  "Beach Spa Resort",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: const [
                                    Text(
                                      "4,97",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18
                                      ),
                                    ),
                                    Icon(Icons.star, color: Colors.white,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.location_on, color: Color(0xFFACB5BE),),
                              Text(
                                "Мальдивы",
                                style: TextStyle(
                                    color: Color(0xFFACB5BE),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.favorite_outline, color: Color(0xFF5E6D77)),
                          Text(
                            "Save ",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/shares.png"),
                          const SizedBox(width: 5,),
                          const Text(
                            "Share",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/icons/pencil-edit.png",color: const Color(0xFF5E6D77)),
                          const Text(
                            " Review",
                            style: TextStyle(
                                color: Color(0xFF5E6D77),
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                buildDescription(context),
              ],
            ),
        ],
      ),
    );
  }

  Column buildDescription(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHotelFacilities(),
            const SizedBox(height: 30,),
            buildHotelExcellent(),
            const SizedBox(height: 25,),
            buildAboutTheHotel(),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "БЛИЖАЙШИЕ АЭРОПОРТЫ",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                    ),
                  ),
                  Text(
                    "Laamu Atoll — 154 км",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "ОПЛАЧИВАЕТСЯ НА МЕСТЕ",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w600,
                        fontSize: 14
                    ),
                  ),
                  Text(
                    "Туристический налог (Green Tax) 6 \$/ночь за чел. (373 ₽)",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w500,
                        fontSize: 14
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            buildInformation(),
            const SizedBox(height: 25,),
            Image.asset("assets/images/maps-tours.png", fit: BoxFit.cover,),
            const SizedBox(height: 25,),
            buildAllNumbers(),
            const SizedBox(height: 25,),
            buildAllNumber(),
            const SizedBox(height: 25,),
            buildHotelArea(),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SimilarHotelWidget(title: "Похожие отели", listNameRating: listHotelsName,),
            ),
            const SizedBox(height: 25,),
            Column(
              children: [
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(MediaQuery.of(context).size.width / 1.3, 46),
                          backgroundColor: const Color(0xFF1A2B47),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const FlightSelectionPage()));
                        });
                      },
                      child: const Text(
                        "Выбрать тур",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      )),
                ),
                const SizedBox(height: 10,),
                const Text(
                  "на 8 ночей , 1 человек, с перелетом",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),

              ],
            ),
            const SizedBox(height: 25,),
          ],
        );
  }

  Padding buildHotelArea() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Территория отеля",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
              SizedBox(height: 15,),
              Text(
                "магазин сувениров, библиотека, рестораны(шведский стол), прачечная, бар, тв зал, обмен валюты, спа центр, сейфы для хранения ценностей",
                style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),
              ),
            ],
          ),
        );
  }

  Padding buildAllNumber() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Во всех номерах",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
              SizedBox(height: 15,),
              Text(
                "Катамаран платно, футбол, каноэ, волейбол, дайвинг центр, снорклинг",
                style: TextStyle(
                    color: Color(0xFF5E6D77),
                    fontWeight: FontWeight.w400,
                    fontSize: 14
                ),
              ),
            ],
          ),
        );
  }

  Padding buildAllNumbers() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Во всех номерах",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset("assets/icons/tv-tours.png"),
                  const SizedBox(width: 10,),
                  const Expanded(
                    child: Text(
                      "телевизор: плазменная манель",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/terass-tours.png"),
                  const SizedBox(width: 10,),
                  const Expanded(
                    child: Text(
                      "терасса",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/cond-tours.png"),
                  const SizedBox(width: 10,),
                  const Expanded(
                    child: Text(
                      "кондиционер",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/phone-tours.png"),
                  const SizedBox(width: 10,),
                  const Expanded(
                    child: Text(
                      "телефон",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/coffe-tours.png"),
                  const SizedBox(width: 10,),
                  const Expanded(
                    child: Text(
                      "набор для приготовления кофе",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/ubor-tours.png"),
                  const SizedBox(width: 10,),
                  const Expanded(
                    child: Text(
                      "ежедневная уборка номеров",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/ubor1-tours.png"),
                  const SizedBox(width: 10,),
                  const Expanded(
                    child: Text(
                      "ежедневная уборка номеров",
                      style: TextStyle(
                          color: Color(0xFF5E6D77),
                          fontWeight: FontWeight.w400,
                          fontSize: 12
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
  }

  Padding buildInformation() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(108.45 * 3.14/180), // convert angle degree to radians
                stops: [0.0095, 0.5559, 0.992],
                colors: [
                  Color.fromRGBO(95, 144, 243, 0.08),
                  Color.fromRGBO(95, 144, 243, 0.17),
                  Color.fromRGBO(95, 144, 243, 0.03),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Важная информация",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.access_time_outlined, color: Color(0xFF005BFE),),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Прибытие",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "12:00 AM",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.access_time_outlined, color: Color(0xFF005BFE),),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Выезд",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12
                                ),
                              ),
                              Text(
                                "11:00 AM",
                                style: TextStyle(
                                    color: Color(0xFF5E6D77),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                const Divider(),
                const SizedBox(height: 15,),
                Row(
                  children: const [
                    Icon(Icons.circle, color: Color(0xFF5E6D77), size: 7,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        "Самостоятельное прибытие (Мини-сейф)",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Icon(Icons.circle, color: Color(0xFF5E6D77), size: 7,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        "Курение запрещено",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Icon(Icons.circle, color: Color(0xFF5E6D77), size: 7,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        "Нельзя с питомцами",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Icon(Icons.circle, color: Color(0xFF5E6D77), size: 7,),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text(
                        "Ознакомьтесь с правилами отмены. Они будут действовать, даже если вы отмените бронирование из-за коронавируса.",
                        style: TextStyle(
                            color: Color(0xFF1A2B47),
                            fontWeight: FontWeight.w500,
                            fontSize: 14
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        );
  }

  Padding buildHotelExcellent() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 43,
                    width: 43,
                    decoration: const BoxDecoration(
                        color: Color(0xFFFA5636),
                        shape: BoxShape.circle
                    ),
                    child: const Center(
                      child: Text("7,4", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500),),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Text(
                      "Удобства в отеле",
                      style: TextStyle(
                          color: const Color(0xFF1A2B47).withOpacity(0.85),
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Text(
                  "Превосходный клубный отель. Рядом с пляжем. Прекрасный номер. Прекрасный пляж.",
                  style: TextStyle(
                      color: Color(0xFF005BFE),
                      fontWeight: FontWeight.w400,
                      fontSize: 12
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                "Рейтинг формируется на основании 1372 отзыва туристов, которые были в этом отеле сервисом TrustYou ",
                style: TextStyle(
                    color: Color(0xFF898989),
                    fontWeight: FontWeight.w500,
                    fontSize: 12
                ),
              ),
              const SizedBox(height: 20,),
              buildTextExcellent("Номер", "9.3", "Современные просторные номера с хорошо укомплектованным мини-баром и впечатляющим видом из окон. Удобные кровати и прочая мебель, чистые номера и хороший кондиционер. Чистые большие ванные комнаты. Неплохое состояние номеров. Отличный душ.",),
              const SizedBox(height: 20,),
              buildTextExcellent("Сервис", "9.1", "Приветливый персонал, отличная уборка, прекрасные экскурсоводы. Очень профессиональная работа официантов, сотрудников стойки регистрации и менеджеров. Хорошая команда аниматоров. Великолепное обслуживание номеров. Посредственный уход за детьми. Трансфер был нормальный.",),
              const SizedBox(height: 20,),
              buildTextExcellent("Пляж", "9.1", "Прекрасный чистый пляж, который отлично подходит для спорта.",),
              const SizedBox(height: 20,),
              buildTextExcellent("Расположение", "8.8", "Отличное расположение рядом с пляжем.",),
              const SizedBox(height: 20,),
              buildTextExcellent("Завтрак", "8.8", "Вкусный завтрак",),
              const SizedBox(height: 20,),
              buildTextExcellent("Чистота", "8.8", "Оснащение отеля чистое. Чистые номера, ванные комнаты и бассейн. Обеденный зал мог бы быть почище.",),
            ],
          ),
        );
  }

  Padding buildAboutTheHotel() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Об отеле Beach Spa Resort",
                    style: TextStyle(
                        color: Color(0xFF1A2B47),
                        fontWeight: FontWeight.w700,
                        fontSize: 16
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    "Построен: 2016 г.\nРасположен: на атолле Гаафу Далу, в 400 км от международного аэропорта Хулуле (г. Мале).\nТрансфер: 50 минут на самолете внутренних авиалиний до аэропорта Каадеду + 10 минут на скоростном катере до отеля.\nСостоит из комплекса вилл.\nВсего 120 номеров.\nПляж: собственный песчаный пляж в 50 м от отеля (1 береговая линия). Зонтики, шезлонги: бесплатно.\nРазмеры острова: 500 х 200 м.\nК оплате принимаются карты: American Express, Visa, MasterCard, JCB.\nНомер телефона: +960 684-4888.\nАдрес: Gaafu Dhaalu Atoll.",
                    style: TextStyle(
                        color: const Color(0xFF1A2B47).withOpacity(0.85),
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                    ),
                  ),

                ],
              ),
    );
  }

  Column buildTextExcellent(String name, number, descriptions) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          color: Color(0xFF1A2B47),
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Text(
                      number,
                      style: const TextStyle(
                          color: Color(0xFF005BFE),
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                      ),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                Text(
                  descriptions,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12
                  ),
                ),
              ],
            );
  }

  Padding buildHotelFacilities() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Удобства в отеле",
                style: TextStyle(
                    color: const Color(0xFF1A2B47).withOpacity(0.85),
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/tours-wifi.png", color: const Color(0xFF005BFE),),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Бесплатнй Wifi",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 14
                          ),
                        ),
                        Text(
                          "На всей территории отеля и в номерах",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w400,
                              fontSize: 10
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/food-tours.png",),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ресторан",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 14
                          ),
                        ),
                        Text(
                          "Здесь можно скоротать время за коктейлем",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w400,
                              fontSize: 10
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/p2-tours.png"),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Стоянка",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 14
                          ),
                        ),
                        Text(
                          "Бесплатная парковка для машин",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w400,
                              fontSize: 10
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/fitnes-tours.png"),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Фитнесс центр",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 14
                          ),
                        ),
                        Text(
                          "Современные тренажоры, спа, бассейн",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w400,
                              fontSize: 10
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/basseyn-tours.png"),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Бассейн",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 14
                          ),
                        ),
                        Text(
                          "Можно поплавать, если рядом нет моря или к нему просто не хочется идти",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w400,
                              fontSize: 10
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/icons/beach-tours.png"),
                  const SizedBox(width: 15,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1я линия",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w500,
                              fontSize: 14
                          ),
                        ),
                        Text(
                          "До пляжа всего 50 м",
                          style: TextStyle(
                              color: const Color(0xFF1A2B47).withOpacity(0.85),
                              fontWeight: FontWeight.w400,
                              fontSize: 10
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        );
  }
}
