import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:pretty_json/pretty_json.dart';
import 'package:flutter/material.dart';

Future<void> readExerciseDatasetJSON(String searchFieldInput) async {
  final String response =
      await rootBundle.loadString('assets/Exercise_Dataset.json');
  final data = await json.decode(response);
  List<dynamic> cars = data;

  final results = queryResults(cars, searchFieldInput);
  debugPrint(prettyJson(results));
}

List queryResults(List<dynamic> cars, String searchFieldInput) {
  final searchMakeModel = searchFieldInput.split(' ');
  List results = [];
  if (searchMakeModel.length == 1) {
    for (final car in cars) {
      if (car["make"].contains(
              RegExp('^' + searchMakeModel[0], caseSensitive: false)) |
          car["model"].contains(
              RegExp('^' + searchMakeModel[0], caseSensitive: false))) {
        results.add(car);
      }
    }
  } else if (searchMakeModel.length == 2) {
    for (final car in cars) {
      if (car["make"].contains(
              RegExp('^' + searchMakeModel[0], caseSensitive: false)) &
          car["model"].contains(
              RegExp('^' + searchMakeModel[1], caseSensitive: false))) {
        results.add(car);
      }
    }
  } else {
    return results;
  }

  return results;
}
