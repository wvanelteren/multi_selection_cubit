import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../multi_select.dart';

part 'multi_select_state.dart';

class MultiSelectCubit extends Cubit<MultiSelectState> {
  final List<MultiSelectItem> items;

  MultiSelectCubit({@required this.items})
      : super(MultiSelectState(items: items));

  void selectionChange(int id) {
    final List<MultiSelectItem> updatedItems = state.items.map((item) {
      return item.item.id == id
          ? item.copyWith(selected: !item.selected)
          : item;
    }).toList();
    emit(state.copyWith(items: updatedItems));
  }
}
