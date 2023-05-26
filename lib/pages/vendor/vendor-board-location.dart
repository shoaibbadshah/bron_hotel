import 'package:bron_hotel/pages/vendor/confirm-address.dart';
import 'package:flutter/material.dart';

class VendorBoardLocation extends StatefulWidget {
  const VendorBoardLocation({Key? key}) : super(key: key);

  @override
  State<VendorBoardLocation> createState() => _VendorBoardLocationState();
}

class _VendorBoardLocationState extends State<VendorBoardLocation> {
  TextEditingController controllerLocation = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                "Where’s your place\nlocated?",
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
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/maps-hotel.png"),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              TextField(
                controller: controllerLocation,
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Enter your location',
                  hintStyle: const TextStyle(
                      color: Color(0xFFACB5BE),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  prefixIcon: InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ConfirmAddress()));
                      });
                    },
                      child: const Icon(Icons.add_location_outlined, color: Color(0xFF1A2B47),)
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Color(0xFF1A2B47)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Color(0xFF1A2B47)),
                  ),
                ),
              )
            ],
          ),
        )

      ],
    );
  }
}
