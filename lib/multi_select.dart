import 'package:flutter/foundation.dart';

import 'package:multi_selection/item_model.dart';

/// Represents Item model in gridview
class MultiSelectItem {
  final ItemModel item;
  final bool selected;

  const MultiSelectItem({@required this.item, this.selected = false});

  MultiSelectItem copyWith({
    bool selected,
  }) {
    return MultiSelectItem(
      item: item,
      selected: selected ?? this.selected,
    );
  }
}
