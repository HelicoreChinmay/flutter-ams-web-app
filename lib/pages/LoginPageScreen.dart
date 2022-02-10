import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ams/pages/CEODashboardPage.dart';
import 'package:flutter_ams/pages/FinanceDepartmentDashboardPage.dart';
import 'package:flutter_ams/pages/ManagerDashboardPage.dart';
import 'package:flutter_ams/pages/UserDashboardPage.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPageScreen extends StatefulWidget {
  @override
  _MyStateLoginPageScreen createState() => _MyStateLoginPageScreen();
}

class _MyStateLoginPageScreen extends State<LoginPageScreen> {
  var errorMsg;
  var result;

  String mobileNo;

  final _formLoginKey = new GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 35.0, 0.0, 0.0),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: new Color(0xff4A4B4D),
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 18.0, 10.0, 0.0),
                  child: Text(
                    "Add your details to login",
                    style: TextStyle(
                      color: new Color(0xff7C7D7E),
                      fontSize: 14,
                    ),
                  ),
                ),
                Form(
                  key: _formLoginKey,
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 30.0, 10.0, 20.0),
                        child: TextFormField(
                          controller: emailController,
                          autocorrect: false,
                          autofocus: false,
                          maxLength: 30,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          cursorColor: Colors.black,
                          textInputAction: TextInputAction.next,
                          //validator: RequiredValidator(errorText: "*Required"),
                          validator: MultiValidator([
                            RequiredValidator(errorText: "*Required"),
                            //EmailValidator(errorText: "Please enter valid email")
                          ]),
                          decoration: InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff4A4B4D), width: 1.0),
                            ),
                            labelText: 'Email',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelStyle: TextStyle(
                                color: new Color(0xff4A4B4D),
                                fontSize: 14,
                                fontFamily: 'Roboto-Regular'),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 20.0),
                        child: TextFormField(
                          obscureText: true,
                          //old validation
                          autocorrect: false,
                          autofocus: false,
                          maxLength: 10,
                          maxLines: 1,
                          controller: passwordController,
                          textInputAction: TextInputAction.next,
                          cursorColor: Colors.black,
                          validator: MultiValidator([
                            RequiredValidator(errorText: " *Required"),
                          ]),
                          decoration: InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff4A4B4D), width: 1.0),
                            ),
                            labelText: 'Password',
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelStyle: TextStyle(
                                color: new Color(0xff4A4B4D),
                                fontSize: 14,
                                fontFamily: 'Roboto-Regular'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*screenWidth < 322
                    ? Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60.0, vertical: 20.0),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: new Color(0xff0B4328),
                                    fontSize: 14,
                                    fontFamily: 'Metropolis-Medium'),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              side: BorderSide(
                                  color: Color(0xff0B4328), width: 1),
                            ),
                            onPressed: () async {
                              if (_formLoginKey.currentState.validate()) {
                                // final pref =
                                //     await SharedPreferences.getInstance();

                                if (emailController.text == "Chiragbhai" &&
                                    passwordController.text == "12345") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ManagerDashboardPage(),
                                    ),
                                  );
                                } else if (emailController.text == "Chinmay" &&
                                    passwordController.text == "12345") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          UserDashboardPage(),
                                    ),
                                  );
                                }
                                else if (emailController.text == "Vimalbhai" &&
                                    passwordController.text == "12345") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          FinanceDepartmentDashboardPage(),
                                    ),
                                  );
                                }

                                /*Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HomePageScreen1()),
                                    (route) => false);*/

                              } else {
                                print("not valid");
                                //print("Msg from else = $errorMsg");
                              }
                            }),
                      )
                    : */
                    Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: TextButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 100.0, vertical: 20.0),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: new Color(0xff0B4328),
                                    fontSize: 14,
                                    fontFamily: 'Metropolis-Medium'),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              side: BorderSide(
                                  color: Color(0xff0B4328), width: 1),
                            ),
                            onPressed: () async {
                              if (_formLoginKey.currentState.validate()) {
                                if (emailController.text == "Chiragbhai" &&
                                    passwordController.text == "12345") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ManagerDashboardPage(),
                                    ),
                                  );
                                } else if (emailController.text == "Chinmay" &&
                                    passwordController.text == "12345") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          UserDashboardPage(),
                                    ),
                                  );
                                }
                                else if (emailController.text == "Vimalbhai" &&
                                    passwordController.text == "12345") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          FinanceDepartmentDashboardPage(),
                                    ),
                                  );
                                }
                                else if (emailController.text == "Deepbhai" &&
                                    passwordController.text == "12345") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CEODashboardPage(),
                                    ),
                                  );
                                }
                                /*Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HomePageScreen()),
                                    (route) => false);*/
                              } else {}
                            }),
                      ),
                /*Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Text(
                    "or Login With",
                    style: TextStyle(
                        color: new Color(0xff7C7D7E),
                        fontSize: 14,
                        fontFamily: 'Metropolis-Medium'),
                  ),
                ),*/
                /*Padding(
                  padding: const EdgeInsets.only(top: 53.0),
                  child: RichText(
                    text: TextSpan(
                      text: Strings.createAccountLabel,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Sign Up Clicked");
                                // Route route = MaterialPageRoute(
                                //     builder: (context) => SignUpPageScreen2());
                                // Navigator.pushReplacement(context, route);
                              },
                            text: " Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff0B4328),
                                fontSize: 14.0)),
                      ],
                    ),
                  ),
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  _displaySnackBar(BuildContext context) {
    /* ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("$errorMsg"),
                            backgroundColor: Colors.amber,
                          )); */
    final snackBar = SnackBar(
        content: Text("$errorMsg", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red);
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
