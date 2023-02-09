// ignore_for_file: prefer_const_constructors

import 'package:conversor_moeda/app/Componets/currency_box.dart';
import 'package:conversor_moeda/app/Controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  late HomeController homeController;

  @override
  void initState() {
    super.initState();

    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, right: 30, bottom: 20, left: 30),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                controller: homeController.toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model!;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              CurrencyBox(
                controller: homeController.fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model!;
                  });
                },
                selectedItem: homeController.fromCurrency,
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    homeController.convert();
                  },
                  child: Text('Converter'))
            ],
          ),
        ),
      ),
    );
  }
}
