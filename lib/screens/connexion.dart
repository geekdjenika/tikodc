import 'package:country_phone_code_picker/country_phone_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {

  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _numeroController;

  CountryController countryController = CountryController(); //Initialize the controller


  bool isValid = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _numeroController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _numeroController.dispose();
    super.dispose();
  }

  Widget choixModeRecuperation() {
    return Container(
      height: 70,
      width: 1000,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => {

            },
            child: Container(
              alignment: Alignment.centerLeft,
              height: 30,
              child: Text(
                'Numéro de téléphone',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () => {

            },
            child: Container(
              height: 30,
              alignment: Alignment.centerLeft,
              child: Text(
                'E-mail',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
              'Connexion',
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
        body: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
          child: TabBarView(
            children: [
              _telephoneTab(),
              _emailTab(),
            ],
          ),
        )
      ),
    );
  }

  _telephoneTab() {
    return Form(
      key: _formKey,
      child: Container(
        child: Stack(
          children: [
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              initialValue: PhoneNumber(
                isoCode: "ML",
                dialCode: "223"
              ),
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: const SelectorConfig(

                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              // autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: const TextStyle(color: Colors.black),
              textFieldController: _numeroController,
              // formatInput: false,
              maxLength: 11,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              cursorColor: Colors.black,
              inputDecoration: InputDecoration(
                contentPadding:
                const EdgeInsets.only(bottom: 15, left: 0),
                border: InputBorder.none,
                hintText: 'Numéro de Téléphone',
                hintStyle: TextStyle(
                    color: Colors.grey.shade500, fontSize: 16),
              ),
              // onSaved: (PhoneNumber number) {
              //   print('On Saved: $number');
              // },
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
                  "Envoyer un code",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),

              onPressed: () => {
                isValid ? print("Merci") : null
              },
            ),
          ],
        ),
      ),
    );

  }

  _emailTab() {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              hintText: "E-mail ou nom d'utilisateur",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
                hintText: "Mot de passe",
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
            ),
          ),
          SizedBox(height: 25,),
          GestureDetector(
            onTap: () => {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                content: choixModeRecuperation(),
                );
              })
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
                isValid ? print("Merci") : null
              },
            ),

        ],
      ),
    );

  }
}
