import 'package:flutter/material.dart';
import 'package:version2_website/widgets/company_card.dart';
import 'package:version2_website/widgets/navbar.dart';

class HomeScreen extends StatelessWidget {
  static const String id = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(24.0),
          height: 2000,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 167, 148, 250), Color.fromARGB(255, 109, 120, 242), Colors.black],
            ),
          ),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
            ),
            children: const [
              CompanyCard(
                'About',
                'Version2 LLC is a holding company ran by two brothers Vincent and Victoir Nguyen. Our goal is to accumulate many business ventures in order to build a large portfolio of companies to increase the value our stakeholders will enjoy.',
              ),
              CompanyCard(
                'Crypto Mining',
                'Using a variety of different mining methods we accumulate various crypto currencies. Primarily through the use of ASIC miners.',
              ),
              CompanyCard(
                'DnDungeon Masters',
                'We manage a network of dedicated Dungeon Masters to facilitate sessions of gameplay in Dungeons & Dragons. Ranging from one-off games to entire campaigns ran by our DM\'s so that our clients may focus on enjoying the game.',
              ),
              CompanyCard(
                'Contact',
                'CEO Vincent Nguyen (INSERT EMAIL)\nPresident Victoir Nguyen (victoirn@version2.llc)',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
