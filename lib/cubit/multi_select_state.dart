part of 'multi_select_cubit.dart';

class MultiSelectState {
  final List<MultiSelectItem> items;

  const MultiSelectState({@required this.items});

  MultiSelectState copyWith({List<MultiSelectItem> items}) {
    return MultiSelectState(items: items ?? this.items);
  }
}
