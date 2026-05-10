import 'package:anitrack/src/ui/widgets/list_item.dart';
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

class DropdownSelectorState<T> extends State<DropdownSelector<T>> {
  late int index;

  @override
  void initState() {
    super.initState();

    index =
        widget.values.indexWhere((item) => item.value == widget.initialValue);
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
                final result = await showModalBottomSheet<T>(
                    context: context,
                    clipBehavior: Clip.antiAlias,
                    builder: (context) => DraggableScrollableSheet(
                      initialChildSize: 1,
                      builder: (context, controller) => ListView.builder(
                        shrinkWrap: true,
                        controller: controller,
                        itemCount: widget.values.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.of(context).pop(widget.values[index].value);
                          },
                          child: Padding(
                            padding: const EdgeInsetsGeometry.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  widget.values[index].text,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                if (this.index == index)
                                  const Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Icon(Icons.check),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                );

                if (result == null) return;
                if (result == widget.values[index].value) return;

                setState(() {
                  index =
                      widget.values.indexWhere((item) => item.value == result);
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
