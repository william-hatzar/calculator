
import 'package:math_expressions/math_expressions.dart';

class CalcUtil {

  double evalExpression(String expression) {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();

    // Ensure that multiplication is supported
    exp = exp.simplify();

    return exp.evaluate(EvaluationType.REAL, cm);
  }

}