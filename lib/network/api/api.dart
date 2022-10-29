import '../../views/worldState/worldState_model.dart';

abstract class Api {
  // Future<LoginResponse> postUserLoginApi(String email, String password);
  // Future<HomeResponse> postHomeApi(String category);

  Future<WorldStateModel> getWorldStateApi();

}