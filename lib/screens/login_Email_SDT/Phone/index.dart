import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shop_shoes/screens/home/index.dart';

import 'package:shop_shoes/screens/bottom_tab_bar/index.dart';


class Country {
  final String name;
  final String flag;
  final String dialCode;

  Country({
    required this.name,
    required this.flag,
    required this.dialCode,
  });
}

final List<Country> countries = [
  Country(name: 'Vietnam', flag: '🇻🇳', dialCode: '+84'),
  Country(name: 'United States', flag: '🇺🇸', dialCode: '+1'),
  Country(name: 'Canada', flag: '🇨🇦', dialCode: '+1'),
  Country(name: 'United Kingdom', flag: '🇬🇧', dialCode: '+44'),
  Country(name: 'Australia', flag: '🇦🇺', dialCode: '+61'),
  Country(name: 'France', flag: '🇫🇷', dialCode: '+33'),
  Country(name: 'Germany', flag: '🇩🇪', dialCode: '+49'),
];

class LoginPhone extends StatefulWidget {
  const LoginPhone({super.key});

  @override
  State<LoginPhone> createState() => _LoginPhoneState();
}

class _LoginPhoneState extends State<LoginPhone> {
  Country? selectedCountry;
  final TextEditingController phoneNumberController = TextEditingController();

  void _showCountryPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            children: [
              for (var country in countries)
                ListTile(
                  onTap: () {
                    setState(() {
                      selectedCountry = country;
                      Navigator.of(context).pop();
                    });
                  },
                  leading: Text(country.flag),
                  title: Text(country.name),
                  trailing: Text(country.dialCode),
                ),
            ],
          ),
        );
      },
    );
  }

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
                  fontSize: 14.33,
                  color: Color.fromARGB(255, 0, 95, 103),
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 30, top: 20)),
              GestureDetector(
                onTap: () {
                  _showCountryPicker(context);
                },
                child: Container(
                  width: 75,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      if (selectedCountry != null) ...[
                        Text(selectedCountry!.flag),
                        const SizedBox(width: 10),
                        Text(selectedCountry!.dialCode),
                      ] else ...[
                        Text(countries[0].flag),
                        const SizedBox(width: 10),
                        Text(countries[0].dialCode),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10, height: 60),
              SizedBox(
                width: 250,
                child: Expanded(
                  child: SizedBox(
                    width: 80,
                    height: 45,
                    child: TextField(
                      controller: phoneNumberController,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: const InputDecoration(
                        hintText: "Phone Number",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
<<<<<<< HEAD
                      MaterialPageRoute(builder: (_) => const HomeScreen()),
=======
                      MaterialPageRoute(
                          builder: (_) => const MainHomeScreens()),
>>>>>>> Luan
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 106, 215, 225),
                    minimumSize: const Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 10,
                  ),
                  child: const Text(
                    'SEND OTP',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text("Or login with",
                    style: TextStyle(color: Color.fromARGB(255, 47, 47, 47))),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/Facebook_48px.png',
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/Twitter_48px.png',
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/google_48px.png',
                      width: 33.5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }
}
