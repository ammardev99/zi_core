import 'package:flutter/material.dart';

class ZiCheckboxStyle {
  static const double size = 20;
  static const BorderRadius radius =
      BorderRadius.all(Radius.circular(6));
}
//////////

class ZiCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const ZiCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: Container(
        width: ZiCheckboxStyle.size,
        height: ZiCheckboxStyle.size,
        decoration: BoxDecoration(
          color: value ? Theme.of(context).primaryColor : Colors.transparent,
          borderRadius: ZiCheckboxStyle.radius,
          border: Border.all(
            color: value
                ? Theme.of(context).primaryColor
                : Colors.grey,
          ),
        ),
        child: value
            ? const Icon(Icons.check, size: 16, color: Colors.white)
            : null,
      ),
    );
  }
}

////

class ZiCheckboxTile extends StatelessWidget {
  final bool value;
  final String label;
  final ValueChanged<bool> onChanged;

  const ZiCheckboxTile({
    super.key,
    required this.value,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Row(
        children: [
          ZiCheckbox(value: value, onChanged: onChanged),
          const SizedBox(width: 12),
          Expanded(child: Text(label)),
        ],
      ),
    );
  }
}




