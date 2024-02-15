


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        suffix: const Icon(
          FontAwesomeIcons.magnifyingGlass, //from packeges
          size: 27,
        ),
        enabled: true,
        enabledBorder: buildOutLineInputBorder(),
        border: const OutlineInputBorder(),
        focusedBorder:  buildOutLineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
