import 'package:flutter/material.dart';

class VendorBoardOffer extends StatefulWidget {
  const VendorBoardOffer({Key? key}) : super(key: key);

  @override
  State<VendorBoardOffer> createState() => _VendorBoardOfferState();
}

class _VendorBoardOfferState extends State<VendorBoardOffer> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: const Color(0xFF1A2B47),
          child:  Column(
            children: [
              const SizedBox(height: 20,),
              Image.asset("assets/icons/pilot-vendor.png"),
              const SizedBox(height: 20,),
              const Text(
                "Let guests know what\nyour place has to offer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 40,),
            ],
          ),
        ),
        const SizedBox(height: 30,),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Do you have any standout amenities?",
            style: TextStyle(
                color: Color(0xFF1A2B47),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
        ),
        Expanded(
          flex: 2,
          child: GridView.builder(
            controller: controller,
            scrollDirection: Axis.vertical,
            primary: false,
            padding: const EdgeInsets.all(20),
            // physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.8 / 0.6,
              crossAxisCount: 2,
            ),
            itemCount: 6,
            itemBuilder: (context, index) =>
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFF1A2B47)),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/vendor-img3.png"),
                        const SizedBox(height: 5,),
                        const Text(
                          "Pool",
                          style: TextStyle(
                              color: Color(0xFF1A2B47),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
          ),
        )
      ],
    );
  }
}
