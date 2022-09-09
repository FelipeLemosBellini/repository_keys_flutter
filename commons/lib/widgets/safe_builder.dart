import 'package:commons/commons.dart';
import 'package:flutter/material.dart';
import 'package:external_dependencies/flutter_triple.dart';

class SafeBuilder<TStore extends Store<SafeException, TState>, TState extends Object>
    extends TripleBuilder<TStore, SafeException, TState> {
  @override
  final TStore store;
  final BuildContext? context;
  final void Function(BuildContext, SafeException error)? onError;

  const SafeBuilder({Key? key, required this.store, required builder, this.context, this.onError})
      : super(key: key, builder: builder, store: store);

  @override
  createState() {
    if (onError != null && context != null)
      store.observer(onError: (error) => onError!(context!, error));
    return super.createState();
  }
}