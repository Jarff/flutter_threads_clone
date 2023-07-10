import 'package:flutter/material.dart';
import 'package:flutter_threads_clone/utils/flutter_flow_theme.dart';
import 'package:flutter_threads_clone/widgets/threadWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget.key,
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 38,
                    height: 36,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              ThreadWidget(
                text:
                    'APOYA EL BARBIEHAMMER\n#CILLANMURPHY de #Oppenheimer dijo que ya quiere ver #Barbie y de paso recomienda al público ver ambas películas al mismo día cuando se estrenen:\n\n\"adoro a Margot Robbie, amo a Ryan Gosling. Ya quiero ver ambas el mismo día. Son buenas películas y lo que gana es el cine.\"',
              ),
              ThreadWidget(
                verified: true,
                text:
                    'APOYA EL BARBIEHAMMER\n#CILLANMURPHY de #Oppenheimer dijo que ya quiere ver #Barbie y de paso recomienda al público ver ambas películas al mismo día cuando se estrenen:\n\n\"adoro a Margot Robbie, amo a Ryan Gosling. Ya quiero ver ambas el mismo día. Son buenas películas y lo que gana es el cine.\"',
              ),
              ThreadWidget(
                text: 'APOYA EL BARBIEHAMMER\n#CILLANMURPHY de #Oppenheimer',
              ),
              ThreadWidget(
                text: 'APOYA EL BARBIEHAMMER\n#CILLANMURPHY de #Oppenheimer',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
