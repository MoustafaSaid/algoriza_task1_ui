import 'package:algoriza_task1_ui/component/google_button.dart';
import 'package:algoriza_task1_ui/component/header.dart';
import 'package:algoriza_task1_ui/component/matrial_button.dart';
import 'package:algoriza_task1_ui/component/text_button.dart';
import 'package:algoriza_task1_ui/component/text_form_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
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
                  Header(title: "Register"),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              const Text("Email"),
              const SizedBox(
                height: 10,
              ),
              MyTextFormField(
                  controller: emailController,
                  inputType: TextInputType.emailAddress,
                  label: "Email",
                  hint: "Eg example@email.com"),
              const SizedBox(
                height: 20,
              ),
              const Text("Phone Number"),
              const SizedBox(
                height: 10,
              ),
              MyTextFormField(
                prefixIcon: CountryCodePicker(
                  initialSelection: 'eg',
                  favorite: const ['eg', 'sa', 'us'],
                ),
                controller: phoneController,
                inputType: TextInputType.number,
                label: "Phone Number",
                hint: "Eg 0123456789",
              ),
              const SizedBox(
                height: 20,
              ),

              const Text("Password"),
              const SizedBox(
                height: 10,
              ),

              MyTextFormField(
                controller: passwordController,
                inputType: TextInputType.visiblePassword,
                label: "Password",
                hint: "Password",
                suffixIcon: const Icon(Icons.remove_red_eye_rounded,color: Colors.black,),
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
                  onPressed: () {},
                  title: "Register",
                  color: Colors.blue,
                  radius: 5,
                  height: 50),
              const SizedBox(
                height: 20,
              ),
              GoogleButton(onPressed: () {}, height: 50),
              MyTextButton(
                leading: "Has any account",
                tail: " Sign in here",
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/register');
                },
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "By registering your account , you are agree to our ",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black54,
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const InkWell(
                      child: Text(
                        "Terms and Condition ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
