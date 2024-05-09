//constant is where we keep repeating the same things 

// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class TColors{
TColors._();

//app basic colors
static const Color primary = Color(0xff4b68ff);
static const Color Secondary = Color(0xFFFFE24B);
static const Color accent = Color(0xFFb0c7ff);

//Gradient colors
static Gradient linearGredient = const LinearGradient(
  begin: Alignment(0.0, 0.0),
  end: Alignment(0.707, -0.707),
  colors:[
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4)
]
);

//text colors
static const Color textPrimary = Color(0xFF333333);
static const Color textSecondary = Color(0xFF6C7570);
static const Color textWhite = Colors.white;

//Background colors
static const Color light = Color(0xFFF6F6F6);
static const Color dark = Color(0XFF272727);
static const Color primaryBackground = Color(0xFFF3F5FF);

//Background Container colors
static const Color lightContainer = Color(0xFFF6F6F6);
static  Color darkContainer = TColors.white.withOpacity(0.1);

//button colors
static const Color buttonPrimary = Color(0xFF4b68FF);
static const Color buttonSecondary = Color(0xFF6C7570);
static const Color buttonDisabled = Color(0xFFC4C4C4);

//Border colors
static const Color BorderPrimary = Color(0xFFD9D9D9);
static const Color BorderSecondary = Color(0xfffe6e6e6);

//Error and Validation colors
static const Color error = Color(0xfffd32f2f);
static const Color success = Color(0xFF388C3C);
static const Color warning = Color(0xFFF57C00);
static const Color info = Color(0xFF1976D2);

//Neutral shade
static const Color black = Color(0xFF232323);
static const Color darkerGrey = Color(0xFF4F4F4F);
static const Color darkGrey = Color(0xFF939393);
static const Color grey = Color(0xFFE0E0E0);
static const Color softGrey = Color(0xFFF4F4F4);
static const Color lightGrey = Color(0xFFF9F9F9);
static const Color white = Color(0xFFFFFFFF);






























}