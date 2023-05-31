import 'package:flutter/material.dart';

import '../home.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  ScrollController controllerListView = ScrollController();
  static const EdgeInsets _contentPadding = EdgeInsets.symmetric(horizontal: 20, vertical: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Избранные", style: TextStyle(color: Color(0xFF1A2B47), fontSize: 20, fontWeight: FontWeight.w600),),
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
            });
          },
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF1A2B47),),
        ),
      ),
      body: ListView(
        controller: controllerListView,
        padding: _contentPadding,
        children: List.generate(
          5,
              (index) => const FavoriteItem(),
        ),
      ),
    );
  }
}

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {

  static const Color _subtitleColor = Color(0xFF5E6D77);
  static const Color _starIconColor = Color(0xFFFA5636);
  static const double _subtitleFontSize = 14;
  static const FontWeight _subtitleFontWeight = FontWeight.w400;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4.1,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage("assets/images/favorites-image.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 15, right: 20),
            child: Icon(
              Icons.favorite,
              color: Color(0xFFD80027),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Hotel Stanford",
                              style: TextStyle(
                                color: Color(0xFF1A2B47),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  color: _subtitleColor,
                                ),
                                Text(
                                  "Tunis",
                                  style: TextStyle(
                                    color: _subtitleColor,
                                    fontSize: _subtitleFontSize,
                                    fontWeight: _subtitleFontWeight,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: '100 \$ /',
                                style: TextStyle(
                                  color: _subtitleColor,
                                  fontSize: _subtitleFontSize,
                                  fontWeight: _subtitleFontWeight,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: ' ночь ',
                                    style: TextStyle(
                                      color: _subtitleColor,
                                      fontSize: 12,
                                      fontWeight: _subtitleFontWeight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.circle,
                              size: 5,
                              color: _subtitleColor,
                            ),
                            const Text(
                              " 6 гостей , 3 спален",
                              style: TextStyle(
                                color: _subtitleColor,
                                fontSize: _subtitleFontSize,
                                fontWeight: _subtitleFontWeight,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "340 Reviews",
                        style: TextStyle(
                          color: Color(0xFF6A7A84),
                          fontSize: 14,
                          fontWeight: _subtitleFontWeight,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            "4.97",
                            style: TextStyle(
                              color: _starIconColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: _starIconColor,
                            size: 12,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const Divider(),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
