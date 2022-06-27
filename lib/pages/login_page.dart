import 'package:demo4/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  final formKey = GlobalKey<FormState>();

  moveToHome() {
    if (formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoutes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const Text(
              "Login Page",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            const Image(
              image: AssetImage("assets/images/img7.jpg"),
              height: 200.0,
            ),
            const SizedBox(
              height: 28.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                validator: (value) {
                  if (value == "") {
                    return "User Nmae Cannot Empty";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Enter Email",
                  label: Text(
                    "Email Id",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if (value == "") {
                    return "Password Cannot Be Empty";
                  } else if (value!.length <= 8) {
                    return "Password Must Contain 8 Charecter";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  label: Text(
                    "Password",
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => moveToHome(),
              child: const Text("Log In"),
            ),
          ],
        ),
      ),
    );
  }
}
