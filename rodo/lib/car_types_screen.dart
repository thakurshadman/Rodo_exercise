import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TypesOfCarGrid extends StatelessWidget {
  const TypesOfCarGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 26, 47, 53),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Vehicle Type', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),),
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: typesOfCar(),
          padding: EdgeInsets.symmetric(horizontal: 52, vertical: 0),
          crossAxisSpacing: 57,
        ));
  }
}

List<CarTile> typesOfCar() {
  List carTypes = [
    'Compact',
    'Convertible',
    'Coupe',
    'Hatchback',
    'Hybrid',
    'Midsize',
    'Minivan',
    'Sedan',
    'Small SUV',
    'Sport',
    'SUV',
    'Truck'
  ];
  List<CarTile> carTileList = [];
  for (final car in carTypes) {
    carTileList.add(CarTile(car));
  }
  return carTileList;
}

class CarTile extends StatelessWidget {
  String carType = '';
  String assetPath = "assets/cars/";

  CarTile(String carType) {
    this.carType = carType;
    this.assetPath += "$carType.png";
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(assetPath),
        Text(
          carType,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    ), onTap: (){},  );
  }
}
