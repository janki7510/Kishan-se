import 'package:intl/intl.dart';


class TFormatter{
   static String formatDate(DateTime? date){
     date ??= DateTime.now();
     return DateFormat('dd-MMM-yyyy').format(date); //Customize the date format as needed
   }

   static String formatCurrency(double amount){
     return NumberFormat.currency(local: 'rupees' , symbol:'₹').format(amount);
   }

   static String formatPhoneNumber(String phoneNumber){
     //Assuming a 10-digit indian phone number format: 99087 98765
     if(phoneNumber.length == 10){
       return '(${phoneNumber.substring(0,5)}) (${phoneNumber.substring(5)})';
     }else if(phoneNumber.length==12){
       return '(${phoneNumber.substring(0,2)}) (${phoneNumber.substring(2,7)}) (${phoneNumber.substring(7)})';
     }
     return phoneNumber;
   }
}