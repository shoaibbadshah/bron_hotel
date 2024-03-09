import 'package:flutter/material.dart';

class VendorBoardBedrooms extends StatefulWidget {
  const VendorBoardBedrooms({Key? key}) : super(key: key);

  @override
  State<VendorBoardBedrooms> createState() => _VendorBoardBedroomsState();
}

class _VendorBoardBedroomsState extends State<VendorBoardBedrooms> {
  int numberOfItems = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: const Color(0xFF1A2B47),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/icons/pilot-vendor.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Is the pin in the\nright spot?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Guests",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  _decrementButton(),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "$numberOfItems",
                    style: const TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _incrementButton(),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Beds",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  _decrementButton(),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "$numberOfItems",
                    style: const TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _incrementButton(),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Bedrooms",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  _decrementButton(),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "$numberOfItems",
                    style: const TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _incrementButton(),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Bathrooms",
                style: TextStyle(
                    color: Color(0xFF1A2B47),
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  _decrementButton(),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "$numberOfItems",
                    style: const TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  _incrementButton(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _incrementButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          numberOfItems++;
        });
      },
      child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF757575))),
          child: const Center(child: Icon(Icons.add, color: Color(0xFF757575)))),
    );
  }

  Widget _decrementButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          numberOfItems--;
        });
      },
      child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF757575))),
          child: const Center(child: Icon(Icons.remove, color: Color(0xFF757575)))),
    );
  }
}
