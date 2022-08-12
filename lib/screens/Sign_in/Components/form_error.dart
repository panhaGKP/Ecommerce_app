import 'package:flutter/material.dart';
import 'package:ecommerce_app/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  List.generate(
        errors.length, (index) => FormErrorText(error: errors[index])),
    );
  }

  Row FormErrorText({error}) {
    return Row(
       children: [
         Text(error),
       ],
      );
  }
} 