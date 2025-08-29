import 'package:flutter/material.dart';
import 'package:shop_app/login_page.dart';
// import 'package:shop_app/productDetail_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPass = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  var _emailErr = "";
  var _passErr = "";

  var _emailInvalid = false;
  var _passInvalid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            //doc
            mainAxisAlignment: MainAxisAlignment.start,
            //ngang
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Container(
                  alignment: AlignmentDirectional.center,
                  child: Image.asset(
                    "assets/img/logo.png",
                    height: 42,
                    width: 38,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Enter your credentials to continue",
                  style: TextStyle(color: Color(0xff7C7C7C), fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  style: TextStyle(color: Color(0xff030303), fontSize: 16),
                  decoration: InputDecoration(
                    labelText: "First Name",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  style: TextStyle(color: Color(0xff030303), fontSize: 16),
                  decoration: InputDecoration(
                    labelText: "Last Name",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  style: TextStyle(color: Color(0xff030303), fontSize: 16),
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  style: TextStyle(color: Color(0xff030303), fontSize: 16),
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    errorText: _emailInvalid ? _emailErr : null,
                    labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color(0xff7C7C7C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      style: TextStyle(color: Color(0xff030303), fontSize: 16),
                      obscureText: true,
                      controller: _passController,
                      decoration: InputDecoration(
                        labelText: "Password",
                        errorText: _passInvalid ? _passErr : null,
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Color(0xff7C7C7C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: onToggleShowPass,
                      child: Image.asset(
                        _showPass
                            ? "assets/img/show_icon.png"
                            : "assets/img/hide_icon.png",
                        height: 42,
                        width: 38,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "By continuing you agree to our Terms of Service and Privacy Policy",
                  style: TextStyle(fontSize: 12, color: Color(0xff7C7C7C)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(19),
                        ),
                      ),
                    ),
                    onPressed: onSignUpClick,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xffFFF9FF)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff030303),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xff53B175),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSignUpClick() {
    setState(() {
      if (_emailController.text.isEmpty) {
        _emailErr = "Please Enter your email";
        _emailInvalid = true;
      } else if (!_emailController.text.endsWith("@gmail.com") ||
          _emailController.text.indexOf("@") < 2) {
        _emailErr = "Please enter a valid email address";
        _emailInvalid = true;
      } else {
        _emailInvalid = false;
      }

      if (_passController.text.length < 6) {
        _passErr = "Password must be at least 6 characters";
        _passInvalid = true;
      } else if (!_passController.text.contains(RegExp(r'[A-Z]'))) {
        _passErr = "Password must contain at least one uppercase letter";
        _passInvalid = true;
      } else if (!_passController.text.contains(RegExp(r'[a-z]'))) {
        _passErr = "Password must contain at least one lowercase letter";
        _passInvalid = true;
      } else if (!_passController.text.contains(RegExp(r'[0-9]'))) {
        _passErr = "Password must contain at least one number";
        _passInvalid = true;
      } else {
        _passInvalid = false;
      }

      if (!_emailInvalid && !_passInvalid) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    });
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }
}
