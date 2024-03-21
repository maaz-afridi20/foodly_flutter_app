class HelperFunctions {
  static String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour > 0 && hour < 12) {
      return ' ☀️ ';
    } else if (hour >= 12 && hour < 16) {
      return ' 🌤️ ';
    } else {
      return ' 🌙 ';
    }
  }
}
