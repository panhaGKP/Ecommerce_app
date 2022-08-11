import 'package:ecommerce_app/Group%20Project/SignUp/Complete_SignUp.dart';
import 'package:ecommerce_app/Group%20Project/SignUp/SignUp.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constant.dart';
import 'custom_suffix_icon.dart';
import 'form_error.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String conpassword;
  final List<String> errors = [];
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          const SizedBox(
            height: 20,
          ),
          buildPasswordFormField(),
          const SizedBox(
            height: 20,
          ),
          //buildConfirmPasswordFormField(),
          const SizedBox(
            height: 20,
          ),
          FormError(errors: errors),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 600,
            height: 60,
            child: RaisedButton(
              textColor: Colors.white,
              color: kPrimaryColor,
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(25.0),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  // TextFormField buildConfirmPasswordFormField() {
  //   return TextFormField(
  //     obscureText: true,
  //     onSaved: (newValue) => conpassword = newValue!,
  //     onChanged: (value) {
  //       if (value == null ||
  //           value.isNotEmpty && errors.contains(kConPassNullError)) {
  //         setState(() {
  //           errors.remove(kConPassNullError);
  //         });
  //       } else if (password == value) {
  //         setState(() {
  //           errors.remove(kMatchPassError);
  //         });
  //       }
  //       return null;
  //     },
  //     validator: (value) {
  //       // Check if this field is empty
  //       if (value == null ||
  //           value.isEmpty && !errors.contains(kConPassNullError)) {
  //         setState(() {
  //           errors.add(kConPassNullError);
  //         });
  //       } else if (password != value) {
  //         setState(() {
  //           errors.add(kMatchPassError);
  //         });
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "Confirm Password",
  //       hintText: "Enter your confirm password",
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       contentPadding: EdgeInsets.symmetric(
  //         horizontal: 42,
  //         vertical: 20,
  //       ),
  //       enabledBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(28),
  //         borderSide: const BorderSide(color: kTextColor),
  //         gapPadding: 10,
  //       ),
  //       focusedBorder: OutlineInputBorder(
  //         borderRadius: BorderRadius.circular(28),
  //         borderSide: BorderSide(color: kTextColor),
  //         gapPadding: 10,
  //       ),
  //       suffixIcon: CustomSuffixIcon(
  //         svgIcon: "assets/icons/Lock.svg",
  //       ),
  //     ),
  //   );
  // }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value == null ||
            value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
        password = value;
        return null;
      },
      validator: (value) {
        // Check if this field is empty
        if (value == null ||
            value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value == null ||
            value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        // Check if this field is empty
        if (value == null ||
            value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: const BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kTextColor),
          gapPadding: 10,
        ),
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
