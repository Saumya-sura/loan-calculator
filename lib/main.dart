


//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:loanc_calculator/calculator.dart';

import 'package:loanc_calculator/splash.dart';
import 'package:loanc_calculator/login.dart';
void main()
{
  runApp(MaterialApp(
debugShowCheckedModeBanner: false,
routes: {

  "/":(context)=>const Splash(),
  //"/login":(context) => Login(),
  'login': (context) =>const Login(),
  "/calculator":(context)=> const Calculator()
},

  ));
}