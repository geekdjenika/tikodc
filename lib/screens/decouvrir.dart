import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Decouvrir extends StatelessWidget {
  const Decouvrir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black54,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
                'assets/loading.json',
                width: 50,
                height: 50,
                fit: BoxFit.cover
            ),
            SizedBox(height: 30,),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: "Page en cours de dévéloppement\n"),
                  TextSpan(text: "Contacter "),
                  TextSpan(text: "djenikaa@gmail.com", style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal)),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
