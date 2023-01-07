import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 58.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 52.0,
);

const kAPIKey = '4664e9aa8ea2efa2c4173645c9c586dc';
const kOpenWeatherURL = 'https://api.openweathermap.org/data/2.5/weather';
const kInputTextFieldDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  labelText: 'Enter city name',
  labelStyle: TextStyle(
    color: Colors.grey,
  ),
);
