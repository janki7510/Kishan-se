import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy')
        .format(date); //Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(name: "INR", locale: 'en_IN', symbol: '₹')
        .format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    //Assuming a 10-digit indian phone number format: 99087 98765
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 5)}) (${phoneNumber.substring(5)})';
    } else if (phoneNumber.length == 12) {
      return '(${phoneNumber.substring(0, 4)}) (${phoneNumber.substring(4, 8)}) (${phoneNumber.substring(8)})';
    }
    return phoneNumber;
  }
}
