// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                          // ignore: prefer_const_literals_to_create_immutables
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
              );
  }
}