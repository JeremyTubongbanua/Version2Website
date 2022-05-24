import 'package:flutter/material.dart';
import 'package:version2_website/screens/home_screen.dart';
import 'package:version2_website/widgets/navbar.dart';

class AboutScreen extends StatefulWidget {
  static const String id = '/about';

  const AboutScreen();

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  late int _count;

  @override
  void initState() {
    _count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await Navigator.of(context).pushReplacementNamed(HomeScreen.id);
              },
              child: const Text(
                'Go back',
                style: TextStyle(fontSize: 48),
              ),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (() => setState(() => _count--)),
                  child: const Icon(Icons.remove),
                ),
                Text(
                  _count.toString(),
                  style: TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() => _count++);
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
