// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:conversor_de_moedas/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {

  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel? model)? onChanged;

  const CurrencyBox({ Key? key, required this.items, required this.onChanged, required this.controller, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 56,
                        child: DropdownButton<CurrencyModel>(
                          isExpanded: true,
                          value: selectedItem,
                          underline: Container(
                            height: 1,
                            color: Colors.amber,
                          ),
                          items: items.map((map) => DropdownMenuItem<CurrencyModel>(value: map, child: Text(map.name))).toList(),
                          onChanged: onChanged,
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: controller,
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