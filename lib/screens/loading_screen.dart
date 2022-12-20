import 'package:flutter/material.dart';
import 'package:untitled1/services/location.dart';
import 'package:untitled1/services/networking.dart';

const apiKey = '4664e9aa8ea2efa2c4173645c9c586dc';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude = 0;
  double longitude = 0;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
        url:
            'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    var weatherData = await networkHelper.getData();
    // debugPrint(weatherData.toString());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
