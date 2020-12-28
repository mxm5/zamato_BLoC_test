import 'dart:async';

import 'package:restaurant_finder/Bloc/bloc.dart';
import 'package:restaurant_finder/DataLayer/location.dart';

class LocationBloc implements Bloc {
  Location _location; // data model
  Location get selectedLocation => _location;

  // 1
  final _locationController = StreamController<Location>(); // async dart

  // 2
  Stream<Location> get locationStream => _locationController.stream;

  // 3
  // cal this pass string to sink in class stream
  void selectLocation(Location location) {
    _location = location;
    _locationController.sink.add(location);
  }

  // 4
  // use this to close stream
  @override
  void dispose() {
    _locationController.close();
  }
}
