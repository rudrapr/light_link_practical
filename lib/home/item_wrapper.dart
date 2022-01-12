import 'package:flutter/material.dart';

class ItemWrapper extends StatefulWidget {
  final Widget child;
  final Function() onItemCreated;

  const ItemWrapper({Key? key, required this.child, required this.onItemCreated})
      : super(key: key);

  @override
  _ItemWrapperState createState() => _ItemWrapperState();
}

class _ItemWrapperState extends State<ItemWrapper> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.onItemCreated();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
