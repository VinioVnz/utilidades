import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:utilidades/src/models/about_model.dart';

class AboutController {
  AboutModel getAbout() {
    return AboutModel(
      photoUrl: 'https://avatars.githubusercontent.com/u/114323069?v=4',
      aboutMe: [
        "🎓 Atualmente estou cursando Ciência da Computação na FURB (Universidade Regional de Blumenau).",
        "💻 Sou formado em Desenvolvimento de Software pela CEDUP Hermann Hering.",
        "🚀 Também estou inscrito no programa de treinamento Entra21 - Blusoft, focado em Flutter e Dart.",
      ],

      socialLinks: [
        SocialLink(
          name: "GitHub",
          icon: FontAwesomeIcons.github,
          color: Colors.black,
          url: 'https://github.com/VinioVnz',
        ),
        SocialLink(
          name: "LinkedIn",
          icon: FontAwesomeIcons.linkedin,
          color: Color(0xff3c98ea),
          url: 'www.linkedin.com/in/vinícius-bornhofen-896974333',
        ),
      ],
    );
  }
}
