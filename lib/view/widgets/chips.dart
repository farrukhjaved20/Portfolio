// ignore_for_file: unused_field, prefer_final_fields, non_constant_identifier_names, no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';

class Filterchipwidget extends StatefulWidget {
  final String Chipname;
  const Filterchipwidget({super.key, required this.Chipname});

  @override
  State<Filterchipwidget> createState() => _FilterchipwidgetState();
}

class _FilterchipwidgetState extends State<Filterchipwidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return FilterChip(
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.orange, width: 2),
          borderRadius: BorderRadius.circular(height * 0.02),
        ),
        backgroundColor: Colors.white,
        checkmarkColor: Colors.orange,
        label: Text(widget.Chipname),
        labelStyle: TextStyle(
          fontSize: height * 0.013,
          color: Colors.amber.shade800,
          fontWeight: FontWeight.bold,
        ),
        clipBehavior: Clip.antiAlias,
        selected: _isSelected,
        onSelected: (isSelected) {
          setState(() {
            _isSelected = isSelected;
          });
        },
        selectedColor: const Color.fromRGBO(255, 230, 3, 0.129));
  }
}
