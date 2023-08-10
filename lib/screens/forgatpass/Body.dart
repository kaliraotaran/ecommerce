import 'package:ecommerce/components/custom_suffixixon.dart';
import 'package:ecommerce/components/default_button.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/components/no_account_text.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/login_Success/login_success.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Enter your email and we will send \n you an a link to get your account back',
                textAlign: TextAlign.center,
              ),
              ForgotPassForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    List<String> errors = [];
    // ignore: unused_local_variable
    String email;

    return Form(
      key: _formkey,
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          TextFormField(
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
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your Email',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffixIcon(
                  svgicon: 'assets/icons/Mail.svg',
                )),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          DefaultButton(
              text: 'Continue',
              press: () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                }
                Navigator.pushNamed(context, Login_Successful.routeName);
              }),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an Account? ',
                style: TextStyle(fontSize: getProportionateScreenWidth(16)),
              ),
              NoAccountText()
            ],
          )
        ],
      ),
    );
  }
}
