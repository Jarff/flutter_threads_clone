import 'package:flutter/material.dart';
import '../models/thread.dart';
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
                threadModel: ThreadModel(
                  picture: 'https://picsum.photos/seed/530/600',
                  username: "_vnbared",
                  content:
                      'APOYA EL BARBIEHAMMER\n#CILLANMURPHY de #Oppenheimer dijo que ya quiere ver #Barbie y de paso recomienda al público ver ambas películas al mismo día cuando se estrenen:\n\n\"adoro a Margot Robbie, amo a Ryan Gosling. Ya quiero ver ambas el mismo día. Son buenas películas y lo que gana es el cine.\"',
                  repliesCount: 1,
                  likesCount: 22,
                ),
              ),
              ThreadWidget(
                threadModel: ThreadModel(
                  picture: 'https://picsum.photos/seed/630/600',
                  username: "forbes",
                  content:
                      'APOYA EL BARBIEHAMMER\n#CILLANMURPHY de #Oppenheimer dijo que ya quiere ver #Barbie y de paso recomienda al público ver ambas películas al mismo día cuando se estrenen:\n\n\"adoro a Margot Robbie, amo a Ryan Gosling. Ya quiero ver ambas el mismo día. Son buenas películas y lo que gana es el cine.\"',
                  repliesCount: 2,
                  likesCount: 381,
                  verified: true,
                ),
              ),
              ThreadWidget(
                threadModel: ThreadModel(
                  picture: 'https://picsum.photos/seed/630/600',
                  username: "xenia",
                  content:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                  repliesCount: 3,
                  likesCount: 17,
                ),
              ),
              ThreadWidget(
                threadModel: ThreadModel(
                  picture: 'https://picsum.photos/seed/430/600',
                  username: "eithan",
                  content:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                  repliesCount: 18,
                  likesCount: 64,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
