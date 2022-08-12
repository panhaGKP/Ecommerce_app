import 'package:ecommerce_app/Group%20Project/OTP_Screen/otp.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'custom_suffix_icon.dart';
import 'form_error.dart';

class ComSignUpForm extends StatefulWidget {
  const ComSignUpForm({Key? key}) : super(key: key);

  @override
  State<ComSignUpForm> createState() => _ComSignUpFormState();
}

class _ComSignUpFormState extends State<ComSignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late String phonenum;
  late String address;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          buildPhoneNumFormField(),
          const SizedBox(
            height: 20,
          ),
          buildAddressFormField(),
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
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  //_formKey.currentState?.save();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpScreen()),
                  );
                }
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(25.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextFormField buildPhoneNumFormField() {
    return TextFormField(
      onSaved: (newValue) => phonenum = newValue!,
      onChanged: (value) {
        if (value == null ||
            value.isNotEmpty && errors.contains(kPhoneNumNullError)) {
          setState(() {
            errors.remove(kPhoneNumNullError);
          });
        }
        return null;
      },
      validator: (value) {
        // Check if this field is empty
        if (value == null ||
            value.isEmpty && !errors.contains(kPhoneNumNullError)) {
          setState(() {
            errors.add(kPhoneNumNullError);
          });

          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
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
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value == null ||
            value.isNotEmpty && errors.contains(kaddressNullError)) {
          setState(() {
            errors.remove(kaddressNullError);
          });
        }
        return null;
      },
      validator: (value) {
        // Check if this field is empty
        if (value == null ||
            value.isEmpty && !errors.contains(kaddressNullError)) {
          setState(() {
            errors.add(kaddressNullError);
          });

          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
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
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }
}
