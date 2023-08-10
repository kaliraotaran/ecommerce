import 'package:ecommerce/components/custom_suffixixon.dart';
import 'package:ecommerce/components/form_error.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/screens/otp/otp_screen.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/default_button.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? lastname;
  String? firstname;
  String? phoneNumber;
  String? address;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        buildFirstNameFormField(),
        SizedBox(
          height: getProportionateScreenHeight(25),
        ),
        buildLastNameFormField(),
        SizedBox(
          height: getProportionateScreenHeight(25),
        ),
        buildPhoneNumberFormField(),
        SizedBox(
          height: getProportionateScreenHeight(25),
        ),
        buildaddressFormField(),
        FormError(errors: errors),
        SizedBox(
          height: getProportionateScreenHeight(25),
        ),
        DefaultButton(
          text: 'Continue',
          press: () {
            if (_formKey.currentState!.validate()) {
              Navigator.pushNamed(context, OTPScreen.routeName);
            }
          },
        )
      ]),
    );
  }

  TextFormField buildaddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'Address',
          hintText: 'Enter your Address',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgicon: 'assets/icons/Location point.svg',
          )),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          labelText: 'Phone Number',
          hintText: 'Enter your Phone Number',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgicon: 'assets/icons/Phone.svg',
          )),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastname = newValue!,
      keyboardType: TextInputType.name,
      decoration: const InputDecoration(
          labelText: 'Last Name',
          hintText: 'Enter your Last name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgicon: 'assets/icons/User.svg',
          )),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstname = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
          labelText: 'First Name',
          hintText: 'Enter your First name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgicon: 'assets/icons/User.svg',
          )),
    );
  }
}
