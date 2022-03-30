extension StringService on String {
  String removeLastCharacter() {
    return isNotEmpty
        ? substring(
            0,
            length - 1,
          )
        : '';
  }

  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}
