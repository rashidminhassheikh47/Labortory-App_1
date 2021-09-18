import 'package:flutter/material.dart';

class Slide {
  final String title;
  final String description;

  Slide({
    required this.title,
    required this.description,
  });
}

final slideList = [
  Slide(
    title: 'REACH MORE PATIENTS',
    description: 'Become one of our partner  \n Laboratories, expand your reach \n and generate more revenue from \n our patients’ investigations. ',
  ),
  Slide(
    title: 'EARN AS YOU INVESTIGATE',
    description: 'Join our network of Laboratories and receive \nclinical investigation orders from our \npatients directly to your phone or tablet.'),
  Slide(
    title: 'REFER AND EARN',
    description: 'Earn a referral bonus for every Person, Medical \nDoctor, Pharmacy, or Hospital you refer to sign \nup and transact.',
  ),
];