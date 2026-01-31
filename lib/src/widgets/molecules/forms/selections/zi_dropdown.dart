import 'package:flutter/material.dart';

class ZiDropdownItem<T> {
  final T value;
  final String label;

  ZiDropdownItem({
    required this.value,
    required this.label,
  });
}

/////

class ZiDropdownStyle {
  static const BorderRadius radius =
      BorderRadius.all(Radius.circular(12));
}

////////

class ZiDropdown<T> extends StatelessWidget {
  final T? value;
  final List<ZiDropdownItem<T>> items;
  final ValueChanged<T?> onChanged;
  final String hint;

  const ZiDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
    this.hint = "Select",
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: value,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: ZiDropdownStyle.radius,
        ),
      ),
      items: items
          .map(
            (e) => DropdownMenuItem<T>(
              value: e.value,
              child: Text(e.label),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}

/////////


