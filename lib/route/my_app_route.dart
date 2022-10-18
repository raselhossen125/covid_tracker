// ignore_for_file: prefer_const_constructors

import 'package:covid_tracker/views/spalash_page.dart';
import 'package:get/get.dart';
import '../views/world_state_page.dart';

class MyRoute {
  static const spalashPageRoute = '/spalash';
  static const worldStatePageRoute = '/world-sta';

  static final List<GetPage> pages = [
    GetPage(
      name: spalashPageRoute,
      page: () => SpalashPage(),
    ),
    GetPage(
      name: worldStatePageRoute,
      page: () => WorldStatePage(),
    ),
  ];
}
