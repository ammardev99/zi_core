import 'package:flutter/material.dart';

class ZiSwitchStyle {
  static const double width = 44;
  static const double height = 24;
}

//////

class ZiSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const ZiSwitch({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: ZiSwitchStyle.width,
        height: ZiSwitchStyle.height,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: value ? Theme.of(context).primaryColor : Colors.grey.shade400,
        ),
        child: Align(
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 18,
            height: 18,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

//////

class ZiSwitchTile extends StatelessWidget {
  final bool value;
  final String label;
  final ValueChanged<bool> onChanged;

  const ZiSwitchTile({
    super.key,
    required this.value,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Text(label)),
        ZiSwitch(value: value, onChanged: onChanged),
      ],
    );
  }
}
