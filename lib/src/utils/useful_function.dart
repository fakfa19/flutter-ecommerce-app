import 'package:intl/intl.dart';

/// return ตัวเลขแบบมีคอมม่า (,) เช่น 10,000
String numberComma(dynamic number) {
  if (number == null) {
    return '-';
  }
  if (number is String) {
    if (double.tryParse(number) != null) {
      number = double.parse(number);
      assert(number is double);
    } else {
      return number;
    }
  }
  return NumberFormat("#,###,###.##").format(number);
}

/// return ตัวเลขแบบมีคอมม่า (,) เช่น 10,000
String dollarPrice(dynamic number) {
  if (number == null) {
    return '-';
  }
  if (number is String) {
    if (double.tryParse(number) != null) {
      number = double.parse(number);
      assert(number is double);
    } else {
      return number;
    }
  }
  return NumberFormat("\$#,###,###.##").format(number);
}