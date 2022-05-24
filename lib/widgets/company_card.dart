import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  final String text;
  final String desc;

  const CompanyCard(this.text, this.desc);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            SelectableText(
              text,
              style: const TextStyle(fontSize: 36),
            ),
            const SizedBox(height: 20),
            SelectableText(
              desc,
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
