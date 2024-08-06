import 'package:intl/intl.dart';

class NairaFormatter {
  static String format(value) {
    final numberFormat = NumberFormat.currency(
      locale: 'en_NG',
      symbol: '₦',
       decimalDigits: 0,
    );
    return numberFormat.format(value);
  }
}