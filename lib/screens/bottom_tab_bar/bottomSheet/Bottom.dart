import 'package:flutter/material.dart';

Future bottomSheet(BuildContext context, Widget child) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: child,
      );
    },
  );
}
