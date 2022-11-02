import 'package:flutter/material.dart';
import 'package:tikodc/screens/Inscription.dart';
import 'package:tikodc/screens/accueil.dart';
import 'package:tikodc/screens/ajouter_video.dart';
import 'package:tikodc/screens/choixconnexion.dart';
import 'package:tikodc/screens/connexion.dart';
import 'package:tikodc/screens/decouvrir.dart';
import 'package:tikodc/screens/message.dart';
import 'package:tikodc/screens/profil.dart';
import 'package:tikodc/widgets/custom_bottom_navigation_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectePageIndex = 0;
  static const List<Widget> _pages = [
    Accueil(),
    AjouterVideo(),
    ChoixConnexion(),
    Connexion(),
    Decouvrir(),
    Inscrription(),
    Message(),
    Profil()
  ];
  void _onIconTapped(int index) {
    setState(() {
      _selectePageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectePageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectedPageIndex: _selectePageIndex,onIconTap: _onIconTapped,context: context,),
    );
  }
}
