class ZiFormValidators {
  ZiFormValidators._();

  /* --------------------------------------------------
   * Presence Validation
   * -------------------------------------------------- */

  static String? required(String? value, {String message = 'This field is required'}) {
    if (value == null || value.trim().isEmpty) return message;
    return null;
  }

  static String? notContains(
    String? value,
    String forbidden, {
    String message = 'Invalid value',
  }) {
    if (value == null) return null;
    if (value.contains(forbidden)) return message;
    return null;
  }

  /* --------------------------------------------------
   * Numeric Constraints
   * -------------------------------------------------- */

  static String? isNumber(String? value, {String message = 'Must be a valid number'}) {
    if (value == null || value.isEmpty) return null;
    if (double.tryParse(value) == null) return message;
    return null;
  }

  static String? isInteger(String? value, {String message = 'Must be a whole number'}) {
    if (value == null || value.isEmpty) return null;
    if (int.tryParse(value) == null) return message;
    return null;
  }

  static String? min(
    String? value,
    double minValue, {
    String message = 'Value is too small',
  }) {
    if (value == null || value.isEmpty) return null;
    final number = double.tryParse(value);
    if (number == null || number < minValue) return message;
    return null;
  }

  static String? max(
    String? value,
    double maxValue, {
    String message = 'Value is too large',
  }) {
    if (value == null || value.isEmpty) return null;
    final number = double.tryParse(value);
    if (number == null || number > maxValue) return message;
    return null;
  }

  static String? range(
    String? value,
    double minValue,
    double maxValue, {
    String message = 'Value out of range',
  }) {
    if (value == null || value.isEmpty) return null;
    final number = double.tryParse(value);
    if (number == null || number < minValue || number > maxValue) return message;
    return null;
  }

  static String? isPositive(String? value, {String message = 'Must be greater than zero'}) {
    if (value == null || value.isEmpty) return null;
    final number = double.tryParse(value);
    if (number == null || number <= 0) return message;
    return null;
  }

  static String? isNegative(String? value, {String message = 'Must be less than zero'}) {
    if (value == null || value.isEmpty) return null;
    final number = double.tryParse(value);
    if (number == null || number >= 0) return message;
    return null;
  }

  /* --------------------------------------------------
   * Format & Pattern (Regex)
   * -------------------------------------------------- */

  static String? email(String? value, {String message = 'Invalid email address'}) {
    if (value == null || value.isEmpty) return null;
    final regex = RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$');
    if (!regex.hasMatch(value)) return message;
    return null;
  }

  static String? phone(String? value, {String message = 'Invalid phone number'}) {
    if (value == null || value.isEmpty) return null;
    final regex = RegExp(r'^\+?[0-9]{10,15}$');
    if (!regex.hasMatch(value)) return message;
    return null;
  }

  static String? url(String? value, {String message = 'Invalid URL'}) {
    if (value == null || value.isEmpty) return null;
    final regex = RegExp(r'^(https?:\/\/)?([\w\-])+\.{1}([a-zA-Z]{2,63})(\/.*)?$');
    if (!regex.hasMatch(value)) return message;
    return null;
  }

  static String? alpha(String? value, {String message = 'Letters only'}) {
    if (value == null || value.isEmpty) return null;
    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) return message;
    return null;
  }

  static String? numericOnly(String? value, {String message = 'Numbers only'}) {
    if (value == null || value.isEmpty) return null;
    if (!RegExp(r'^\d+$').hasMatch(value)) return message;
    return null;
  }

  static String? alphanumeric(String? value, {String message = 'Letters and numbers only'}) {
    if (value == null || value.isEmpty) return null;
    if (!RegExp(r'^[a-zA-Z0-9]+$').hasMatch(value)) return message;
    return null;
  }

  static String? customRegex(
    String? value,
    RegExp pattern, {
    String message = 'Invalid format',
  }) {
    if (value == null || value.isEmpty) return null;
    if (!pattern.hasMatch(value)) return message;
    return null;
  }

  /* --------------------------------------------------
   * Security & Complexity
   * -------------------------------------------------- */

  static String? passwordStrength(
    String? value, {
    String message = 'Password too weak',
  }) {
    if (value == null || value.isEmpty) return null;

    final regex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$',
    );

    if (!regex.hasMatch(value)) return message;
    return null;
  }

  static String? noSpaces(String? value, {String message = 'Spaces not allowed'}) {
    if (value == null || value.isEmpty) return null;
    if (value.contains(' ')) return message;
    return null;
  }

  /* --------------------------------------------------
   * Comparison
   * -------------------------------------------------- */

  static String? match(
    String? value,
    String? otherValue, {
    String message = 'Values do not match',
  }) {
    if (value != otherValue) return message;
    return null;
  }

  static String? notMatch(
    String? value,
    String? otherValue, {
    String message = 'Values must be different',
  }) {
    if (value == otherValue) return message;
    return null;
  }

  /* --------------------------------------------------
   * Date & Time
   * -------------------------------------------------- */

  static String? isDate(String? value, {String message = 'Invalid date'}) {
    if (value == null || value.isEmpty) return null;
    if (DateTime.tryParse(value) == null) return message;
    return null;
  }

  static String? isPastDate(String? value, {String message = 'Date must be in the past'}) {
    final date = DateTime.tryParse(value ?? '');
    if (date == null) return null;
    if (!date.isBefore(DateTime.now())) return message;
    return null;
  }

  static String? isFutureDate(String? value, {String message = 'Date must be in the future'}) {
    final date = DateTime.tryParse(value ?? '');
    if (date == null) return null;
    if (!date.isAfter(DateTime.now())) return message;
    return null;
  }

  /* --------------------------------------------------
   * Business Specific
   * -------------------------------------------------- */

  static String? isCnic(String? value, {String message = 'Invalid CNIC'}) {
    if (value == null || value.isEmpty) return null;
    if (!RegExp(r'^\d{5}-\d{7}-\d{1}$').hasMatch(value)) return message;
    return null;
  }

  static String? isIban(String? value, {String message = 'Invalid IBAN'}) {
    if (value == null || value.isEmpty) return null;
    if (!RegExp(r'^[A-Z]{2}\d{2}[A-Z0-9]{11,30}$').hasMatch(value)) return message;
    return null;
  }
}
