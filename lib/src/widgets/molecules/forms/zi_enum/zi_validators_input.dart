class ZiValidatorsInput {
  const ZiValidatorsInput._();

  /// Required field
  static String? required(String? value, {String label = 'This field'}) {
    if (value == null || value.trim().isEmpty) {
      return '$label is required';
    }
    return null;
  }

  /// Email validation
  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }

    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  /// Password (default: min 6 chars)
  static String? password(String? value, {int minLength = 6}) {
    if (value == null || value.length < minLength) {
      return 'Minimum $minLength characters required';
    }
    return null;
  }

  /// Phone number validation
  static String? phone(String? value, {int minLength = 10}) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    if (value.length < minLength) {
      return 'Invalid phone number';
    }
    return null;
  }

  /// Numeric validation
  static String? number(String? value) {
    if (value == null || value.isEmpty) return 'Number is required';
    if (num.tryParse(value) == null) return 'Invalid number';
    return null;
  }

  /// Minimum length
  static String? minLength(String? value, int length) {
    if (value == null || value.length < length) {
      return 'Minimum $length characters required';
    }
    return null;
  }

  /// Maximum length
  static String? maxLength(String? value, int length) {
    if (value != null && value.length > length) {
      return 'Maximum $length characters allowed';
    }
    return null;
  }

  /// Exact length (CNIC, OTP, PIN)
  static String? exactLength(String? value, int length) {
    if (value == null || value.length != length) {
      return 'Must be exactly $length characters';
    }
    return null;
  }

  /// Match another field (password confirm)
  static String? match(
    String? value,
    String? otherValue, {
    String label = 'Values',
  }) {
    if (value != otherValue) {
      return '$label do not match';
    }
    return null;
  }
}
