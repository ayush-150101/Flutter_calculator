import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Functionality{
  String finalExpression = '';
  String Equation = '';
  String Answer = '';

  bool isDigit(String s) {
    if (s == null) {
      return false;
    }
    return int.tryParse(s) != null;
  }

  void buttonTapped(String s){
    finalExpression+=s;

      Equation+=s;

    if(s=='('){
      if(finalExpression.length>1){
        if(isDigit(finalExpression[finalExpression.length - 2])){
          finalExpression = finalExpression.substring(0, finalExpression.length - 1);
          finalExpression+='*(';
        }
      }
    }

    if(isDigit(s)){

      if(finalExpression.length>1){
        if(finalExpression[finalExpression.length - 2] == ')'){
          finalExpression = finalExpression.substring(0, finalExpression.length - 1);
          finalExpression+='*';
          finalExpression+=s;
        }
      }

    }

    print("finalExpression: $finalExpression");
  }

  void deleteButtonTapped(){
    print('Equation_before_deletion: $Equation');

    if(Equation.length>1)
    {
      if (Equation[Equation.length - 1] == '(' && isDigit(Equation[Equation.length - 2])) {
        Equation = Equation.substring(0, Equation.length - 1);
        finalExpression =
            finalExpression.substring(0, finalExpression.length - 2);
      }

      else if (isDigit(Equation[Equation.length - 1]) && Equation[Equation.length - 2] == ')') {
        Equation = Equation.substring(0, Equation.length - 1);
        finalExpression =
            finalExpression.substring(0, finalExpression.length - 2);
      }

      else {
        {
          Equation = Equation.substring(0, Equation.length - 1);
          finalExpression =
              finalExpression.substring(0, finalExpression.length - 1);
        }
      }
    }
    else{
      Equation = '';
      finalExpression = '';
      Answer = '';
    }


    print('Equation_after_deletion: $Equation');
  }

  void equalPressed() {
    String finaluserinput = finalExpression;

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    Answer = eval.toString();
  }

  void allClear(){
    finalExpression = '';
    Answer = '';
    Equation = '';
  }

}