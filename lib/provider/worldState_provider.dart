// ignore_for_file: file_names, empty_catches, avoid_print, unused_local_variable, prefer_typing_uninitialized_variables

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import '../network/endpoints.dart';
import '../views/worldState/worldState_model.dart';

class WorldStateProvider extends ChangeNotifier {
  WorldStateModel? worldStateModel;
  
  Future<WorldStateModel?> getWorldStateRecods() async {
    try {
      final response = await Dio().get(Endpoints.worldStateApi);
      if (response.statusCode == 200) {
        print(response.data);
        return WorldStateModel.fromJson(response.data);
      } else {
        throw Exception('Error');
      }
    } catch (e) {
      print(e.toString());
    }
    return worldStateModel;
  }

  Future<List<dynamic>> getAllCountries() async {
    var data;
    try {
      final response = await Dio().get(Endpoints.countriesListApi);
      data = response.data;
      if (response.statusCode == 200) {
        return data;
      } else {
        return data;
      }
    } catch (e) {
      rethrow;
    }
  }
}
