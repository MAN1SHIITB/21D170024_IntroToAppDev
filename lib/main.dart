//import 'package:budgetapp/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:budgetapp/pages/home.dart';
import 'package:budgetapp/pages/expense.dart';
import 'package:budgetapp/pages/addexpense.dart';


void main() => runApp(MaterialApp(
initialRoute: '/',
    routes: {
  //'/': (context)=> Loading(),
  '/':(context)=>Home(),
  '/expense' : (context) =>  Expense(),
  '/addexpense': (context) => AddExpense(),
    },
  ),);