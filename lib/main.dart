import 'package:TikODC/screens/start.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikODC',
      theme: ThemeData(
        textTheme: GoogleFonts.varelaRoundTextTheme(),
      ),
      home: StartPage(haveAccount: false,),
    );
  }
}