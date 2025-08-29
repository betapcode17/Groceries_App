import 'package:flutter/material.dart';
import 'package:shop_app/home_screen_page.dart';
// import 'package:shop_app/productDetail_page.dart';
import 'package:shop_app/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState(); // Sửa tên class cho đúng chuẩn
}

class _LoginPageState extends State<LoginPage> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),

                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/img/logo.png",
                    height: 42,
                    width: 38,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF181725),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  "Enter your email and password", // sửa lại cho đúng ngữ pháp
                  style: TextStyle(
                    color: const Color(0xff7C7C7C),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Color(0xff030303)),
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
                  keyboardType:
                      TextInputType.emailAddress, // Thêm loại bàn phím email
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      style: TextStyle(fontSize: 20, color: Color(0xff030303)),
                      controller: _passController,

                      obscureText: !_showPass,
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
                      child: Container(
                        child: Image.asset(
                          _showPass
                              ? "assets/img/show_icon.png"
                              : "assets/img/hide_icon.png",
                          height: 24, // chỉnh lại kích thước icon cho hợp lý
                          width: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // TODO: Thêm chức năng quên mật khẩu nếu cần
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        color: const Color(0xff7C7C7C),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(19)),
                      ),
                    ),
                    onPressed: onSignInClick,
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Color(0xffFFF9FF)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
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

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onSignInClick() {
    setState(() {
      if (_emailController.text.isEmpty) {
        _emailErr = "Please enter your email";
        _emailInvalid = true;
      } else if (!_emailController.text.contains("@") ||
          !_emailController.text.contains(".") ||
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
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomescreenPage()),
        );
      }
    });
  }
}
