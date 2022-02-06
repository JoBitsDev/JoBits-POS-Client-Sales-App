import 'package:flutter/material.dart';

class LoginUI extends StatelessWidget {
  final TextEditingController textUser = TextEditingController();
  final TextEditingController textPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 3;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Autenticar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  controller: textUser,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: size,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  controller: textPass,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Autenticar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
