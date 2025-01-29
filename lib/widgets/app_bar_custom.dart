import 'package:flutter/material.dart';
import 'package:pokedex/utils.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  final String name;

  const AppBarCustom({super.key, required this.name});

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),
      ),
      toolbarHeight: 80,
      backgroundColor: ColorsApp.primary,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("lib/assets/images/Pokeball.png"),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.transparent),
              elevation: WidgetStatePropertyAll(0),
            ),
            child: Row(
              spacing: 15,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
