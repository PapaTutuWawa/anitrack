import 'package:flutter/material.dart';

class IntegerInput extends StatefulWidget {
  const IntegerInput({
    required this.onChanged,
    required this.initialValue,
    required this.labelText,
    super.key,
  });

  /// Called when the integer value has been changed.
  final void Function(int) onChanged;

  /// The label of the TextField.
  final String labelText;

  /// The initial integer value.
  final int initialValue;

  @override
  IntegerInputState createState() => IntegerInputState();
}

class IntegerInputState extends State<IntegerInput> {
  /// The integer value backing the widget
  late int _value;

  /// The controller for the TextField.
  final TextEditingController _controller = TextEditingController();
  
  @override
  void initState() {
    super.initState();

    _value = widget.initialValue;
    _controller.text = _value.toString();
  }

  void _handleSubmit(String text) {
    final value = int.parse(text);
    if (value < 0) return;

    _value = value;
    _controller.text = '$_value';
    widget.onChanged(_value);
  }
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            if (_value == 0) return;

            _value--;
            _controller.text = '$_value';
            widget.onChanged(_value);
          },
          child: const Icon(Icons.remove),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Focus(
              onFocusChange: (hasFocus) {
                if (!hasFocus) {
                  print('Handle focus loss');
                  _handleSubmit(_controller.text);
                }
              },
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: widget.labelText,
                ),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                controller: _controller,
                onSubmitted: _handleSubmit,
              ),
            ),
          ),
        ),

        ElevatedButton(
          onPressed: () {
            _value++;
            _controller.text = '$_value';
            widget.onChanged(_value);
          },
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
