
class calculateResult{


  String result = '';

  void calc( double a,double b,double c,double d,double e,double f){
    double determinant = a*d - b*c;
    if(determinant != 0) {
      double x = (e*d - b*f)/determinant;
      double y = (a*f - e*c)/determinant;
      result = "X = $x\n\nY = $y";
    } else {
     result = "ERROR!! DETERMINANT = 0!";
    }
  }

}