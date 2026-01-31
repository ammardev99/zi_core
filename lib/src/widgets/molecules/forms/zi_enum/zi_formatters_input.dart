import 'package:flutter/services.dart';

class ZiFormattersInput {
  const ZiFormattersInput._();

  /// Digits only (0–9)
  static final List<TextInputFormatter> numberOnly = [
    FilteringTextInputFormatter.digitsOnly,
  ];

  /// Decimal numbers (e.g. 10, 10.5, 0.75)
  static final List<TextInputFormatter> decimal = [
    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
  ];

  /// Phone number (digits + max length)
  static List<TextInputFormatter> phone({int maxLength = 15}) => [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(maxLength),
  ];

  /// CNIC / National ID (digits only, fixed length)
  static List<TextInputFormatter> fixedDigits(int length) => [
    FilteringTextInputFormatter.digitsOnly,
    LengthLimitingTextInputFormatter(length),
  ];

  /// Uppercase text only
  static final List<TextInputFormatter> uppercase = [
    TextInputFormatter.withFunction(
      (oldValue, newValue) =>
          newValue.copyWith(text: newValue.text.toUpperCase()),
    ),
  ];

  /// No spaces allowed
  static final List<TextInputFormatter> noSpaces = [
    FilteringTextInputFormatter.deny(RegExp(r'\s')),
  ];

  /// Alphanumeric only (A–Z, a–z, 0–9)
  static final List<TextInputFormatter> alphaNumeric = [
    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
  ];

  /// Currency with limit (e.g. max 2 decimals)
  static List<TextInputFormatter> currency({int decimalPlaces = 2}) => [
    FilteringTextInputFormatter.allow(RegExp('^\\d*\\.?\\d{0,$decimalPlaces}')),
  ];
  // later can add Masked formatter (CNIC, IBAN, Card)
}
