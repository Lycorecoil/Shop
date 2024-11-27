import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ProfilState();
  }
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Page dans la quel l'utilisateur poura gere tous ce qui touche a son profil. En cour de developpement....",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
