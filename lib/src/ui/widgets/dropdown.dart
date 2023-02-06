import 'package:flutter/material.dart';

class SelectorItem<T> {
  const SelectorItem(this.value, this.text);

  final T value;

  final String text;
}

class DropdownSelector<T> extends StatefulWidget {
  const DropdownSelector({
    required this.title,
    required this.onChanged,
    required this.values,
    required this.initialValue,
    super.key,
  });

  /// The title of the dropdown
  final String title;

  final List<SelectorItem<T>> values;

  final T initialValue;
  
  /// Called when the selection has changed
  final void Function(T) onChanged;
  
  @override
  DropdownSelectorState<T> createState() => DropdownSelectorState<T>();
}

class DropdownSelectorDialog<T> extends StatelessWidget {
  const DropdownSelectorDialog({
    required this.values,
    super.key,
  });

  final List<SelectorItem<T>> values;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: ListView.builder(
          itemCount: values.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.of(context).pop(values[index].value);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    values[index].text,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownSelectorState<T> extends State<DropdownSelector<T>> {
  late int index;

  @override
  void initState() {
    super.initState();

    index = widget.values.indexWhere((item) => item.value == widget.initialValue);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: Card(
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () async {
                  final result = await showDialog<T>(
                    context: context,
                    builder: (context) => DropdownSelectorDialog<T>(
                      values: widget.values.cast<SelectorItem<T>>(),
                    ),
                  );

                  if (result == null) return;
                  if (result == widget.values[index].value) return;

                  setState(() {
                    index = widget.values.indexWhere((item) => item.value == result);
                  });

                  widget.onChanged(result);
                },
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        widget.values[index].text,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
    );
  }
}
