import 'package:flutter/material.dart';
import 'package:restaurant_finder/DataLayer/location.dart';

import ' location_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Location>(
        stream: null,
        builder: (context, snapshot) {
          final location = snapshot.data;
          if (location == null) {
            return LocationScreen();
          }
          return Container();
        });
  }
}
