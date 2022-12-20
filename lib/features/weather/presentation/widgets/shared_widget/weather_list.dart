import 'package:flutter/material.dart';
import 'package:flutter_weather/features/weather/presentation/widgets/shared_widget/weather_item_factory.dart';

class WeatherList extends StatelessWidget {
  final Axis scrollDirection;
  ItemDesign itemDesign;
  List<dynamic> itemsInList;

  WeatherList({
    Key? key,
    required this.scrollDirection,
    required this.itemDesign,
    required this.itemsInList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemsInList.length,
      scrollDirection: scrollDirection,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return WeatherItemFactory(itemDesign).designItem(itemsInList[index]);
      },
    );
  }
}
