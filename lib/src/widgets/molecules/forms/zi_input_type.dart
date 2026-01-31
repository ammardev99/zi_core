// zi_input_type.dart
// --------------------------------------------
// Enum definitions for Zi Input system.
//
// - ZiInputType → semantic behavior
// - ZiInputVariant → visual representation
//
// No logic should live here.

enum ZiInputType {
  text,
  email,
  number,
  password,
  multiline,
}

enum ZiInputVariant {
  outline,
  filled,
  underlined,

  /// Layout-based variant (label outside)
  stacked,
}
