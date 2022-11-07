import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InscriptionNext extends StatefulWidget {
  const InscriptionNext({Key? key}) : super(key: key);

  @override
  State<InscriptionNext> createState() => _InscriptionNextState();
}

class _InscriptionNextState extends State<InscriptionNext> {

  late TextEditingController _emailController;
  final _eformKey = GlobalKey<FormState>();

  bool isValid = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => {
            Navigator.pop(context)
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Text(
            'Inscription',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              CupertinoIcons.question_circle,
              color: Colors.black45,
            ),
          ),
        ],
        elevation: 1,
        bottom: TabBar(
          labelColor: Colors.black,
          labelPadding: EdgeInsets.only(left: 30,right: 30),
          tabs: [
            Tab(
              text: "Téléphone",
            ),
            Tab(
              text: "E-mail/nom\nd'utilisateur",
            )
          ],
        ),

      ),
      body: Form(
        key: _eformKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: "Adresse e-mail",
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: TextStyle(color: Colors.grey, fontSize: 13), //apply style to all
                    children: [
                      TextSpan(text: 'En continuant, tu acceptes les  ', style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(text: 'Conditions d\'utilisation', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      TextSpan(text: '  de TikTok et confirmes avoir lu les  ', style: TextStyle(fontWeight: FontWeight.normal)),
                      TextSpan(text: 'Politique de confidentialité', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                      TextSpan(text: ' de TikTok.', style: TextStyle(fontWeight: FontWeight.normal)),
                    ]
                )
            ),

            SizedBox(height: 25,),
            GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InscriptionNext()))
              },
              child: Text(
                'Mot de passe oublié ?',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 25,),
            MaterialButton(
              disabledColor: Colors.grey.shade300,
              disabledTextColor: Colors.black,
              minWidth: double.infinity,
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
                child: Text(
                  "Connexion",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),

              onPressed: () => {

              },
            ),

          ],
        ),
      )
    );
  }
}
