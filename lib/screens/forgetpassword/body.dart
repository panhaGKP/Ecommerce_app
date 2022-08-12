import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/size_config.dart';
import 'package:ecommerce_app/screens/Sign_in/Components/form_error.dart';
import 'package:ecommerce_app/screens/no_account.dart';



// import 'package:ECOMMERCE_APP/constant.dart';
// import 'package:app/screens/Sign_in/Components/form_error.dart';
// import 'package:app/screens/no_account.dart';
// import 'package:app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig().getProportionateScreenWidth(20)
          ),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight *0.04,),
              Text("Forgot Password",
                style: TextStyle(
                  fontSize: SizeConfig().getProportionateScreenWidth(48),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig().getProportionateScreenHeight(15),),
              Text("Please enter your email and we will send you a link to return to your account",
              textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig().getProportionateScreenHeight(15),),
              ForgotPAssForm(),
            ],
          ),
        ),
      ),
    );
  }
}


class ForgotPAssForm extends StatefulWidget {
  const ForgotPAssForm({Key? key}) : super(key: key);

  @override
  State<ForgotPAssForm> createState() => _ForgotPAssFormState();
}

class _ForgotPAssFormState extends State<ForgotPAssForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
             onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email here",
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
          ),
          SizedBox(height: SizeConfig().getProportionateScreenHeight(30),),
          FormError(errors: errors), 
          SizedBox(height: SizeConfig.screenHeight *0.1), 
          TextButton(
                
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.only(left: 100, right:100),

                    primary: Color.fromARGB(255, 2, 2, 2),
                    backgroundColor: Color.fromARGB(255, 72, 207, 117), // Background Color
                ),
                  onPressed: () {
                   if(_formKey.currentState!.validate()){
                      //_formKey.currentState!.save();
                    }
                  },
                  child: Text('CONTINUE'),
                ),
                noAcc(),
        ],
      ),
    );
  }
}