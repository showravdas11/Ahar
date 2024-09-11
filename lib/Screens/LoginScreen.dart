import 'package:ahar/Screens/DeliveryProfile.dart';
import 'package:ahar/Utils/CommonButton.dart';
import 'package:ahar/Utils/CustomTextField.dart';
import 'package:ahar/Utils/Mythem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.02,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: screenHeight * 0.12,
                  width: screenWidth * 0.3,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Image.asset(
                  'assets/images/delivery.png',
                  height: screenHeight * 0.25,
                  width: screenWidth * 0.6,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Text(
                  "Welcome to Ahar",
                  style: TextStyle(
                    color: Color(0xFF3A3F3F),
                    fontWeight: FontWeight.w700,
                    fontSize: screenHeight * 0.025,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                CustomTextFormField(
                  label: "Email Address",
                  hintText: "Enter email",
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.email,
                  textStyle: MyTheme.headlineStyle3,
                  labelStyle: MyTheme.headlineStyle3,
                  borderColor: MyTheme.bgColor2,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                CustomTextFormField(
                  label: "Password",
                  hintText: "Enter Password",
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.lock,
                  textStyle: MyTheme.headlineStyle3,
                  labelStyle: MyTheme.headlineStyle3,
                  borderColor: MyTheme.bgColor2,
                  obscureText: true,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                CustomButton(
                  text: 'Sign In',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DeliveryProfile(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 0.7,
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            activeColor: Color(0xFF16A637),
                            activeTrackColor:
                                Color.fromARGB(255, 235, 234, 234),
                            inactiveThumbColor: Colors.grey,
                            inactiveTrackColor: Colors.grey.shade400,
                          ),
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                            color: MyTheme.bgColor2,
                            fontWeight: FontWeight.w400,
                            fontSize: screenHeight * 0.02,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: MyTheme.bgColor2,
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight * 0.02,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
