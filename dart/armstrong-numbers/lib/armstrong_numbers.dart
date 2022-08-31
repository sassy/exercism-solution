import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    String numStr = number.toString();
    int length = numStr.length;
    num result = 0;
    for (int i = 0; i < length; i++) {
      result += pow(int.parse(numStr[i]), length);
    }
    return result == number;
  }
}
