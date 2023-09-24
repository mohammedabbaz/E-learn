import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {

   late int index;
  late PageController pageController ;
   @override
  void onInit() {
    // TODO: implement onInit
    index =0;
    pageController=PageController(initialPage: index);
    super.onInit();
  }


  List pages = [
    [
      "onboarding1",
      "Discover Your Learning Adventure",
      "Le profil recherché doit maîtriser le développement FULL STACK, front et back end pour aider à la réalisation d'un grand projet en cours de développement.La maîtrise des langages pour le Front End : React, Angular et JavaScriptEt pour le Back End : Java J2E Possibilité de recrutement après le stage si le stagiaire réussi sa mission.Domaine : Informatique / Multimédia / Internet Fonction : Informatique - Développement.Contrat : StageEntreprise : EYSISalaire : A discuterNiveau d'études : Bac plus 2 ou plus",
    ],
    [
      "onboarding2",
      "Stay Organzed With BookMarks",
      "Le profil recherché doit maîtriser le développement FULL STACK, front et back end pour aider à la réalisation d'un grand projet en cours de développement.La maîtrise des langages pour le Front End : React, Angular et JavaScriptEt pour le Back End : Java J2E Possibilité de recrutement après le stage si le stagiaire réussi sa mission.Domaine : Informatique / Multimédia / Internet Fonction : Informatique - Développement.Contrat : StageEntreprise : EYSISalaire : A discuterNiveau d'études : Bac plus 2 ou plus",
    ],
    [
      "onboarding3",
      "Achieve Certificate With Ease",
      "Le profil recherché doit maîtriser le développement FULL STACK, front et back end pour aider à la réalisation d'un grand projet en cours de développement.La maîtrise des langages pour le Front End : React, Angular et JavaScriptEt pour le Back End : Java J2E Possibilité de recrutement après le stage si le stagiaire réussi sa mission.Domaine : Informatique / Multimédia / Internet Fonction : Informatique - Développement.Contrat : StageEntreprise : EYSISalaire : A discuterNiveau d'études : Bac plus 2 ou plus",
    ]
  ];

  jumpTo(int ind){
    pageController.jumpToPage(ind);
  }
}
