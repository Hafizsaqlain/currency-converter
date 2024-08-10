import 'dart:io';

void main() {
  print("Welcome to the Currency Converter!");

  print("Available currencies:");
  print("1. USD (United States Dollar)");
  print("2. EUR (Euro)");
  print("3. GBP (British Pound)");
  print("4. INR (Indian Rupee)");
  print("5. AUD (Australian Dollar)");
  print("6. CAD (Canadian Dollar)");
  print("7. SGD (Singapore Dollar)");
  print("8. PKR (Pakistani Rupee)");
  print("9. JPY (Japanese Yen)");
  print("10. CNY (Chinese Yuan)");

  print("Enter the number of the currency you want to convert from:");
  int fromCurrency = int.parse(stdin.readLineSync()!);

  print("Enter the number of the currency you want to convert to:");
  int toCurrency = int.parse(stdin.readLineSync()!);

  print("Enter the amount to convert:");
  double amount = double.parse(stdin.readLineSync()!);

  double convertedAmount = convertCurrency(fromCurrency, toCurrency, amount);

  print("The converted amount is: $convertedAmount");
}

double convertCurrency(int fromCurrency, int toCurrency, double amount) {
  
  Map<int, double> exchangeRates = {
    1: 1.0, // USD
    2: 0.84, // EUR
    3: 0.76, // GBP
    4: 74.83, // INR
    5: 1.31, // AUD
    6: 1.29, // CAD
    7: 1.35, // SGD
    8: 00.36, // PKR
    9: 110.15, // JPY
    10: 6.47, // CNY
  };

  double fromRate = exchangeRates[fromCurrency]!;
  double toRate = exchangeRates[toCurrency]!;

  return amount * (toRate / fromRate);
}