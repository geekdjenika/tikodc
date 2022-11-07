
import 'package:TikODC/navigation_container.dart';
import 'package:TikODC/screens/Inscription.dart';
import 'package:TikODC/screens/start_connect.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key, required this.haveAccount}) : super(key: key);
  final bool haveAccount;

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool _haveAccount = true;

  @override
  void initState() {
    Firebase.initializeApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(_haveAccount) {

    }
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationContainer()))
          },
          child: Icon(
            Icons.cancel_outlined,
            color: Colors.black,
            size: 24,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              CupertinoIcons.question_circle,
              color: Colors.black,
              size: 24,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: SelectionArea(
                      child: Text(
                        'Inscription à TikTok',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: SelectionArea(
                    child: Text(
                      'Crée un profil, abonne-toi à d\'autres comptes, crée tes propres vidéos et bien plus encore.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 3, right: 3),
                      child: ListTile(
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Inscrription()))
                        },
                        leading: Icon(
                          Icons.person_outline,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Utilise un téléphone ou une adresse e-mail',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        tileColor: Color(0x00F5F5F5),
                        dense: false,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 3, right: 3),
                      child: ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Color(0xFF3275FA),
                        ),
                        title: Text(
                          'Continuer avec Facebook  ',
                          textAlign: TextAlign.start,
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 3, right: 3),
                      child: ListTile(
                        leading: GestureDetector(
                          onTap: () {

                          },
                          child: SvgPicture.asset(
                            'assets/images/google.svg',
                          ),
                        ),
                        title: Text(
                          'Continuer avec Google  ',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsets.only(left: 3, right: 3),
                      child: ListTile(
                        leading: FaIcon(
                          FontAwesomeIcons.twitter,
                          color: Color(0xFF0C8DCF),
                        ),
                        title: Text(
                          'Continuer avec Twitter',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4.1,bottom: 20,right: 20,left: 20),
                  child: SelectionArea(
                      child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(color: Colors.grey, fontSize: 13), //apply style to all
                              children: [
                                TextSpan(text: 'En continuant, tu acceptes nos ', style: TextStyle(fontWeight: FontWeight.normal)),
                                TextSpan(text: 'Conditions d\'utilisation', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                                TextSpan(text: ' et reconnais avoir lu notre ', style: TextStyle(fontWeight: FontWeight.normal)),
                                TextSpan(text: 'Politique de confidentialité', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                                TextSpan(text: ' pour savoir comment nous collectons, utilisons et partageons tes données.', style: TextStyle(fontWeight: FontWeight.normal)),
                              ]
                          )
                      )
                  ),
              ),

              Padding(
                padding: EdgeInsets.all(0),
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0x48CDCECE),
                    ),

                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(23, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectionArea(
                              child: Text(
                                'Tu as déjà un compte ?',
                                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              )),
                          SelectionArea(
                              child: GestureDetector(
                                onTap: () => {
                                  setState(() {
                                    _haveAccount = !_haveAccount;
                                  }),
                                  _haveAccount
                                      ? Navigator.push(context, MaterialPageRoute(builder: (context) => const StartConnect()),)
                                      : null
                                },
                                child: Text(
                                  ' Connexion',
                                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    color: Colors.redAccent,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
