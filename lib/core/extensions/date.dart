extension CalculateShareTimeX on DateTime {
  String calculate() {
    DateTime now = DateTime.now();
    int dayDifference = now.day - day;
    int hourDifference = now.hour - hour;
    int minuteDifference = now.minute - minute;
    if (dayDifference > 0) return '${dayDifference.toString()} days ago';
    if (hourDifference > 0) return '${hourDifference.toString()} hours ago';
    if (minuteDifference > 0)
      return '${minuteDifference.toString()} minutes ago';
    return 'null';
  }
}
