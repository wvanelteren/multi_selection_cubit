import 'package:flutter/material.dart';

import 'item_model.dart';
import 'selection_list_builder.dart';
import 'multi_select.dart';

void main() {
  List<MultiSelectItem> items = [
    MultiSelectItem(
        item: ItemModel(1, 'Jackie', 'http://placekitten.com/200/300')),
    MultiSelectItem(
        item: ItemModel(2, 'Chan', 'http://placekitten.com/201/301')),
    MultiSelectItem(
        item: ItemModel(3, 'Sylvester', 'http://placekitten.com/202/302')),
    MultiSelectItem(
        item: ItemModel(4, 'Stalone', 'http://placekitten.com/203/303')),
    MultiSelectItem(
        item: ItemModel(5, 'Steven', 'http://placekitten.com/204/304')),
    MultiSelectItem(
        item: ItemModel(6, 'Seagal', 'http://placekitten.com/205/305')),
  ];
  runApp(SelectionListBuilder(items: items));
}
