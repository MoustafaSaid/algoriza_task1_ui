import 'package:algoriza_task1_ui/component/google_button.dart';
import 'package:algoriza_task1_ui/component/header.dart';
import 'package:algoriza_task1_ui/component/matrial_button.dart';
import 'package:algoriza_task1_ui/component/text_button.dart';
import 'package:algoriza_task1_ui/component/text_form_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          flexibleSpace: Image.asset(
            "assets/images/fit.jpeg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: const [
                  Header(title: "Sign in"),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const Text("Phone Number"),
              const SizedBox(
                height: 20,
              ),
              MyTextFormField(
                prefixIcon: CountryCodePicker(
                  initialSelection: 'eg',
                  favorite: const ['eg', 'sa', 'us'],
                ),
                controller: controller,
                inputType: TextInputType.number,
                label: "Phone Number",
                hint: "Eg 0123456789",
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                      child: Divider(
                    color: Colors.black54,
                  )),
                  Text(
                    "Or",
                    style: TextStyle(color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                      child: Divider(
                    color: Colors.black54,
                  )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              MYMaterialButton(
                  onPressed: () {

                  },
                  title: "Sign in",
                  color: Colors.blue,
                  radius: 5,
                  height: 50),
              const SizedBox(
                height: 20,
              ),
              GoogleButton(onPressed: () {}, height: 50),
              MyTextButton(
                leading: "Doesn't has any account",
                tail: " Register here",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/register');

                },
              ),
              const Text(
                "use the application according to policy rules any Kinds of violations will be subject to sanctions",
                style: TextStyle(fontSize: 18, color: Colors.black54),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
