import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:version2_website/screens/about_screen.dart';
import 'package:version2_website/screens/home_screen.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  const NavBar();

  @override
  Size get preferredSize {
    return const Size.fromHeight(250);
  }

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    const Color color1 = Color.fromARGB(255, 74, 92, 195);
    const Color color2 = Color.fromARGB(255, 117, 125, 232);

    return SizedBox(
      height: widget.preferredSize.height,
      child: Column(
        children: [
          Container(
            height: widget.preferredSize.height * 0.8,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [color1, color2],
              ),
            ),
            child: const Center(
              child: Text(
                'VERSION 2',
                style: TextStyle(
                  fontSize: 96,
                ),
              ),
            ),
          ),
          const Divider(height: 0),
          Container(
            height: widget.preferredSize.height * 0.2,
            decoration: BoxDecoration(color: Colors.blueAccent),
            child: Row(
              children: [
                Flexible(flex: 1, child: Container()),
                Flexible(
                  flex: 8,
                  child: GestureDetector(
                    onTap: () async {
                      await Navigator.of(context).pushReplacementNamed(HomeScreen.id);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      // decoration: const BoxDecoration(color: Colors.white),
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(flex: 1, child: Container()),
                Flexible(
                  flex: 8,
                  child: GestureDetector(
                    onTap: () async {
                      // ABOUT TODO
                      await Navigator.of(context).pushReplacementNamed(AboutScreen.id);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      // decoration: const BoxDecoration(color: Colors.white),
                      child: const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
