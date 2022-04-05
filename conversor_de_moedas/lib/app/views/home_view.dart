// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 56,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: Container(
                              height: 1,
                              color: Colors.amber,
                            ),
                            value: "Real",
                            items: [
                              DropdownMenuItem(
                                child: Text('Real'),
                                value: 'Real',
                              ),
                              DropdownMenuItem(
                                child: Text('Dolar'),
                                value: 'Dolar',
                              ),
                            ],
                            onChanged: (value) {},
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(style: ElevatedButton.styleFrom(
                primary: Colors.amber
              ), onPressed: () {}, child: Text('Converter'))
            ],
          ),
        ),
      ),
    );
  }
}
