import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobits_pos_client_sales/core/auth/ui/login_controller.dart';

class LoginUI extends GetView<LoginController> {
  LoginUI() {
    Get.put(LoginController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            _createBackground(context),
            _loginForm(context),
          ],
        ),
      ),
    );
  }
}

Widget _loginForm(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
        SizedBox(
          height: 40.0,
        ),
        SafeArea(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/logo_Jobit.png',
              ),
            ],
          ),
          height: 150.0,
          width: 150.0,
        )),
        Container(
          width: size.width * 0.90,
          margin: EdgeInsets.symmetric(horizontal: 40.0),
          padding: EdgeInsets.symmetric(vertical: 50.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 3.0,
                    offset: Offset(0.0, 5.0),
                    spreadRadius: 3.0)
              ]),
          child: Column(
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 60.0,
              ),
              _name(),
              SizedBox(height: 30.0),
              _password(),
              SizedBox(height: 30.0),
              _buttonLogin(),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buttonLogin() {
  return MaterialButton(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text('Login'),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.blue,
      textColor: Colors.white,
      onPressed: () {});
}

Widget _name() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: TextField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        icon: Icon(Icons.account_circle_outlined, color: Colors.blue),
        hintText: 'Nombre',
        labelText: 'Usuario',
      ),
    ),
  );
}

Widget _password() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.lock_outline_rounded, color: Colors.blue),
        labelText: 'Contraseña',
      ),
    ),
  );
}

Widget _createBackground(BuildContext context) {
  final backround = Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[
          Color.fromRGBO(0, 85, 194, 5),
          Color.fromRGBO(0, 86, 193, 20),
        ],
      ),
    ),
  );
  return Stack(
    children: <Widget>[
      backround,
    ],
  );
}
