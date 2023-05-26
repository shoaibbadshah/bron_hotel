import 'package:flutter/material.dart';

class SimilarHotelWidget extends StatefulWidget {
  String title;
  List<HotelsNameRating> listNameRating;
   SimilarHotelWidget({Key? key, required this.title, required this.listNameRating})
      : super(key: key);

  @override
  State<SimilarHotelWidget> createState() => _SimilarHotelWidgetState();
}

class _SimilarHotelWidgetState extends State<SimilarHotelWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
              color: Color(0xFF1A2B47),
              fontWeight: FontWeight.w600,
              fontSize: 16
          ),
        ),
        const SizedBox(height: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(widget.listNameRating.length, (index) =>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      widget.listNameRating[index].name,
                      style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Color(0xFF005BFE),
                          fontWeight: FontWeight.w600,
                          fontSize: 14
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.listNameRating[index].rating,
                        style: const TextStyle(
                            color: Color(0xFFFA5636),
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                        ),
                      ),
                      const SizedBox(width: 3,),
                      const Icon(Icons.star, color: Color(0xFFFA5636), size: 18,)
                    ],
                  )
                ],
              ),
          ),
        ),
      ],
    );
  }
}

class HotelsNameRating {
  String name;
  String rating;

  HotelsNameRating(this.name, this.rating);
}