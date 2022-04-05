// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:conversor_de_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Image.asset('assets/logo.png', width: 200, height: 200),
              SizedBox(height: 25),
              CurrencyBox(),
              SizedBox(height: 25),
              CurrencyBox(),
              SizedBox(height: 50),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.amber),
                  onPressed: () {},
                  child: Text('Converter'))
            ],
          ),
        ),
      ),
    );
  }
}
