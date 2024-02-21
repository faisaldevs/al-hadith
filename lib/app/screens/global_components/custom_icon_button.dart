import 'package:flutter/material.dart';

class CustomIconButtons extends StatelessWidget {
  const CustomIconButtons({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      // padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll(EdgeInsets.all(15)),
          // backgroundColor: MaterialStatePropertyAll(Colors.white),
          // overlayColor: MaterialStatePropertyAll(Colors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Image.asset(
          imageUrl,
          width: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
