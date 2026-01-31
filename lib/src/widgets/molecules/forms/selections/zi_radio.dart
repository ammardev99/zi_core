import 'package:flutter/material.dart';

class ZiRadioStyle {
  static const double size = 20;
}

/////

class ZiRadio<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;

  const ZiRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  bool get selected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        width: ZiRadioStyle.size,
        height: ZiRadioStyle.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: selected
                ? Theme.of(context).primaryColor
                : Colors.grey,
            width: 2,
          ),
        ),
        child: selected
            ? Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}



///////

class ZiRadioTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String label;
  final ValueChanged<T> onChanged;

  const ZiRadioTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Row(
        children: [
          ZiRadio<T>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(label)),
        ],
      ),
    );
  }
}





