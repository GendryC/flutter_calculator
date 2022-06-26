class Calc {
  String actual = '';
  String last = '';
  String result = '0';
  static const operations = const ['%', '/', '+', '-', '*', '='];

  String getActualString() {
    return actual;
  }

  String getResult() {
    return result;
  }

  void addActual(String text) {
    switch (text) {
      case 'AC':
        actual = '';
        break;
      case 'DEL':
        String temp = actual.substring(0, actual.length - 1);
        actual = temp;
        break;
      case '=':
        operar();
        break;
      default:
        if (operations.contains(text) && operations.contains(last)) {
          break;
        } else {
          actual += text;
          last = text;
        }
    }
  }

  void operar() {}
}
