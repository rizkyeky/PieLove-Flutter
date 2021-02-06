part of 'bloc.dart';

class HomeBloc implements Bloc {

  @override
  void init() {}

  @override
  void dispose() {}

  List<Map> category = [
    {
      'name': 'Salty Pie',
      'icon': 'assets/img/pieicon1.svg'
    },
    {
      'name': 'Sweet Pie',
      'icon': 'assets/img/pieicon2.svg'
    },
    {
      'name': 'Fruit Pie',
      'icon': 'assets/img/pieicon3.svg'
    },
    {
      'name': 'Drinks',
      'icon': 'assets/img/drink.svg'
    }
  ];

  List<Map> popular = [
    {
      'name': 'Cream Sweet Pie ',
      'img': 'assets/img/pie1.png'
    },
    {
      'name': 'DoubleJumbo Pie',
      'img': 'assets/img/pie2.png'
    },
    {
      'name': 'Fruit’s Small Pie',
      'img': 'assets/img/pie3.png'
    },
  ];
}