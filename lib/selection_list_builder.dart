import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/multi_select_cubit.dart';
import 'multi_select.dart';

class SelectionListBuilder extends StatelessWidget {
  final List<MultiSelectItem> items;

  SelectionListBuilder({@required this.items});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Multi Selection")),
        body: BlocProvider(
            create: (BuildContext context) => MultiSelectCubit(items: items),
            child: BlocBuilder<MultiSelectCubit, MultiSelectState>(
              builder: (context, state) {
                return Column(
                  children: [
                    GridView.count(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      crossAxisCount: 5,
                      children: List.generate(items.length, (index) {
                        return InkWell(
                          onTap: () {
                            context
                                .bloc<MultiSelectCubit>()
                                .selectionChange(items[index].item.id);
                          },
                          child: !state.items[index].selected
                              ? Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      maxRadius: 30.0,
                                      backgroundImage: NetworkImage(
                                          items[index].item.imgUrl),
                                    ),
                                    Text('${items[index].item.title}'),
                                  ],
                                )
                              : Icon(Icons.check_circle, color: Colors.blue),
                        );
                      }),
                    ),
                    RaisedButton(
                      onPressed: () {
                        return context
                            .bloc<MultiSelectCubit>()
                            .selectedItems
                            .forEach((item) => print(item.item.title));
                      },
                      child: const Text('Print Selected Items'),
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }
}
