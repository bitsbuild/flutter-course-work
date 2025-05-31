import 'package:flutter/material.dart';

class TrackerPage extends StatefulWidget {
  ValueChanged<Widget> fun;
  TrackerPage({super.key, required this.fun});

  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
