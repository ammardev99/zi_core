import 'package:flutter/material.dart';
import 'zi_filter_popup.dart';

class ZiFilterSelectionPopup<T> extends StatefulWidget {
  final String title;
  final List<T> options;
  final List<T> initialValues;
  final bool multiSelect;
  final String Function(T) labelBuilder;
  final ValueChanged<List<T>> onApply;

  const ZiFilterSelectionPopup({
    super.key,
    required this.title,
    required this.options,
    required this.labelBuilder,
    required this.onApply,
    this.initialValues = const [],
    this.multiSelect = false,
  });

  @override
  State<ZiFilterSelectionPopup<T>> createState() =>
      _ZiFilterSelectionPopupState<T>();
}

class _ZiFilterSelectionPopupState<T>
    extends State<ZiFilterSelectionPopup<T>> {
  late List<T> selected;

  @override
  void initState() {
    super.initState();
    selected = List<T>.from(widget.initialValues);
  }

  void _toggle(T value) {
    setState(() {
      if (widget.multiSelect) {
        selected.contains(value)
            ? selected.remove(value)
            : selected.add(value);
      } else {
        selected = [value];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ZiFilterPopup(
      title: widget.title,
      onApply: () {
        widget.onApply(selected);
        Navigator.pop(context);
      },
      onClear: () => setState(() => selected.clear()),
      child: ListView(
        shrinkWrap: true,
        children: widget.options.map((e) {
          final isSelected = selected.contains(e);
          return ListTile(
            title: Text(widget.labelBuilder(e)),
            trailing: widget.multiSelect
                ? Checkbox(
                    value: isSelected,
                    onChanged: (_) => _toggle(e),
                  )
                : Radio<bool>(
                    value: true,
                    groupValue: isSelected,
                    onChanged: (_) => _toggle(e),
                  ),
            onTap: () => _toggle(e),
          );
        }).toList(),
      ),
    );
  }
}
