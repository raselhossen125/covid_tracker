// ignore_for_file: file_names, empty_catches, avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';
import '../network/endpoints.dart';
import '../views/worldState/worldState_model.dart';

class WorldStateProvider extends ChangeNotifier {
  Future<WorldStateModel> getWorldStateRecords() async {
    final url = Uri.parse(Endpoints.worldStateApi);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return WorldStateModel.fromJson(data);
    } else {
      throw Exception('Error');
    }
  }
}
