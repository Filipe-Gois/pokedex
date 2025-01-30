import 'package:flutter/material.dart';

class SearchBarCustom extends StatefulWidget {
  final String value;

  const SearchBarCustom({super.key, required this.value});

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  late final TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(text: widget.value);
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.maxFinite,
      child: TextField(
        controller: textEditingController,
      ),
    );
  }
}
