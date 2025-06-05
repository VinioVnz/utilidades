import 'package:flutter/material.dart';
import 'package:utilidades/src/models/about_model.dart';

class AboutController {
  AboutModel getAbout(){
    return AboutModel (
    photoUrl: 'https://avatars.githubusercontent.com/u/114323069?v=4', 
    aboutMe: [
    "🎓 Atualmente estou cursando Ciência da Computação na FURB (Universidade Regional de Blumenau).",
    "💻 Sou formado em Desenvolvimento de Software pela CEDUP Hermann Hering.",
    "🚀 Também estou inscrito no programa de treinamento Entra21 - Blusoft, focado em Flutter e Dart."
    ],
     
    socialLinks: [
      SocialLink(name: "GitHub", icon: Icons.add, url: 'https://github.com/VinioVnz'),
      SocialLink(name: "LinkedIn", icon: Icons.add, url: 'www.linkedin.com/in/vinícius-bornhofen-896974333'),
      
    ]
    );
   }
}