import 'package:flutter/material.dart';


class Specialists extends StatefulWidget {
  const Specialists({Key? key}) : super(key: key);

  @override
  _SpecialistsState createState() => _SpecialistsState();
}

class _SpecialistsState extends State<Specialists> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Text('Specialts'),
    );
  }
}
