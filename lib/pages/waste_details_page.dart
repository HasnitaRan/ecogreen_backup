import 'package:flutter/material.dart';
import 'package:mwd_app/models/waste.dart';

class WasteDetailsPage extends StatefulWidget {
  final Waste waste;

  const WasteDetailsPage({super.key, required this.waste});

  @override
  State<WasteDetailsPage> createState() => _WasteDetailsPageState();
}

class _WasteDetailsPageState extends State<WasteDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
