import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class StoreHelper {
  static Color? getColor(String value) {
    /// define your product specific colors here and it will match the attribute colors and show specific

    if (value == "Green") {
      return Colors.green;
    } else if (value == "Red") {
      return Colors.red;
    } else if (value == "Yellow") {
      return Colors.yellow;
    } else if (value == "Blue") {
      return Colors.blue;
    } else if (value == "Pink") {
      return Colors.pink;
    } else if (value == "Black") {
      return Colors.black;
    } else if (value == "white") {
      return Colors.white;
    } else if (value == "grey") {
      return Colors.grey;
    } else if (value == "orange") {
      return Colors.orange;
    } else if (value == "teal") {
      return Colors.teal;
    } else if (value == "amber") {
      return Colors.amber;
    } else if (value == "pinkAccent") {
      return Colors.pinkAccent;
    } else if (value == "purple") {
      return Colors.purple;
    } else if (value == "skyBlue") {
      return Colors.blueAccent;
    } else if (value == "brown") {
      return Colors.brown;
    }
    return null;
  }

  //snackBar
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }

// Alert Dialog
  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("ok"))
            ],
          );
        });
  }

// Navigate
  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

//Truncate text
  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}....';
    }
  }

//screen Height
  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

//screen Width
  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

//screen size
  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

// is Dark Mode
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // date format
  static String getFormattedDate(DateTime date,
      {String format = 'dd-mm-yyyy'}) {
    return DateFormat(format).format(date);
  }

//remove Duplicate
  static List<store> removeDuplicate<store>(List<store> list) {
    return list.toSet().toList();
  }

// wrapWidget
  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedList.add(Row(
        children: rowChildren,
      ));
    }
    return wrappedList;
  }
}
