import 'package:flutter/material.dart';

import '../Model/currency_model.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final CurrencyModel selectedItem;
  final void Function(CurrencyModel?)? onChanged;

  const CurrencyBox(
      {super.key,
      required this.items,
      required this.controller,
      required this.onChanged,
      required this.selectedItem});

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
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                value: selectedItem,
                iconEnabledColor: Colors.amber,
                items: items
                    .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
                    .toList(),
                onChanged: onChanged,
              ),
            )),
        const SizedBox(width: 20),
        Expanded(
            flex: 2,
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber))),
            ))
      ],
    );
  }
}
