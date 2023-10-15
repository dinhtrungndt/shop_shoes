import 'package:flutter/material.dart';

const List<String> list = <String>['+84', '+1', '+68', '+69'];

class LoginPhone extends StatefulWidget {
  const LoginPhone({super.key});

  @override
  State<LoginPhone> createState() => _LoginPhoneState();
}

class _LoginPhoneState extends State<LoginPhone> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 30)),
              Text(
                "Phone Number",
                style: TextStyle(
                    fontSize: 14.33, color: Color.fromARGB(255, 0, 95, 103)),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(children: [
            const Padding(padding: EdgeInsets.only(left: 30, top: 20)),
            DropdownMenu<String>(
              dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
              initialSelection: list.first,
              onSelected: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              width: 300,
              inputDecorationTheme: const InputDecorationTheme(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 50),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
