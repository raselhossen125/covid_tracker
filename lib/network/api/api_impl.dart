import 'package:covid_tracker/views/worldState/worldState_model.dart';
import 'package:dio/dio.dart';
import '../dio/dio_client.dart';
import '../endpoints.dart';
import 'api.dart';

class ApiImplement extends Api {
  final DioClient dioClient;
  // final Session session = getIt<Session>();

  ApiImplement({required this.dioClient});

  @override
  Future<WorldStateModel> getWorldStateApi() async {
    try {
      final Response response = await dioClient.get(Endpoints.worldStateApi);
      return WorldStateModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  // @override
  // Future<LoginResponse> postUserLoginApi(String email, String password) async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.login,
  //       data: {
  //         'email': email,
  //         'password': password,
  //       },
  //     );
  //     return LoginResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<HotelRoomsResponse> getHotelRoomsApi() {
  //   // TODO: implement getHotelRoomsApi
  //   throw UnimplementedError();
  // }

  // @override
  // Future<LoginResponse> postUserRegistrationApi(
  //     String name,
  //     String email,
  //     String password,
  //     String birth_date,
  //     String mobile_number,
  //     String gender,
  //     String city,
  //     String prefer,
  //     String location,
  //     var profile_pic) async {
  //   // var c ; MultipartFile.fromFile(profile_pic.path, filename: "pic-name.png").then((value) => c = value);
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.register,
  //       data: {
  //         'name': name,
  //         'email': email,
  //         'password': password,
  //         'birth_date': birth_date,
  //         'mobile_number': mobile_number,
  //         'gender': gender,
  //         'city': city,
  //         'prefer': prefer,
  //         'location': location,
  //         'profile_pic': profile_pic.readAsBytesSync(),
  //       },
  //     );
  //     return LoginResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<HomeResponse> postHomeApi(String category) async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.home,
  //       data: {
  //         'category': category,
  //       },
  //       options: Options(
  //         headers: {
  //           "authorization": "Bearer " + session.getString(session.USER_TOKEN),
  //         },
  //       ),
  //     );

  //     return HomeResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<ExploreResponse> postExpolreApi(
  //     String latitude,
  //     String longitude,
  //     String category_type,
  //     String location,
  //     String start_date,
  //     String end_date) async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.explore,
  //       data: {
  //         'latitude': latitude,
  //         'longitude': longitude,
  //         'category_type': category_type,
  //         'location': location,
  //         'start_date': start_date,
  //         'end_date': end_date,
  //       },
  //     );

  //     return ExploreResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<ForYouResponse> postForYouApi() async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.for_you,
  //       data: {},
  //       options: Options(
  //         headers: {
  //           "authorization": "Bearer " + session.getString(session.USER_TOKEN),
  //         },
  //       ),
  //     );

  //     return ForYouResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<SearchByLocationResponse> postSearchByLocationApi(
  //     String location) async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.hotel_search_by_location,
  //       data: {'location': location},
  //       options: Options(
  //         headers: {
  //           "authorization": "Bearer " + session.getString(session.USER_TOKEN),
  //         },
  //       ),
  //     );

  //     return SearchByLocationResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<HotelDetailsResponse> postHotelDetailsApi(String hotel_id) async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.hotel_detail,
  //       data: {'hotel_id': hotel_id},
  //       options: Options(
  //         headers: {
  //           "authorization": "Bearer " + session.getString(session.USER_TOKEN),
  //         },
  //       ),
  //     );
  //     return HotelDetailsResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<LogoutResponse> postLogoutApi() async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.logout,
  //       data: {},
  //       options: Options(
  //         headers: {
  //           "authorization": "Bearer " + session.getString(session.USER_TOKEN),
  //         },
  //       ),
  //     );

  //     return LogoutResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  // @override
  // Future<RestaurantDetailsResponse> postRestaurantDetailsApi() async {
  //   try {
  //     final Response response = await dioClient.post(
  //       Endpoints.restaurant_detail,
  //       data: {'restaurant_id': '2'},
  //       options: Options(
  //         headers: {
  //           "authorization": "Bearer " + session.getString(session.USER_TOKEN),
  //         },
  //       ),
  //     );

  //     return RestaurantDetailsResponse.fromJson(response.data);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
