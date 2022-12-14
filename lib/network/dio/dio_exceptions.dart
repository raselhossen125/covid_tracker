// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  String message = '';
//  static ErrorResponse errorResponse = getIt.get<ErrorResponse>();

  DioExceptions.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        message = "Connection timeout with API server";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioErrorType.other:
        if (dioError.message.contains("SocketException")) {
          message = 'No Internet';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
         if( error['errors'] !=null) {
            //  errorResponse = ErrorResponse.fromJson(error['errors']);
          return _listStrigConvert();
        }else if(error['message'] !=null){
           return error['message'];
         }
         else return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return error['message'];
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }

  String _listStrigConvert(){
    var concatenate = StringBuffer();
    var errorString = '';
    // if((errorResponse.email?.length ?? 0) > 0) {
    //   errorResponse.email?.forEach((item) {
    //     concatenate.write(item);
    //   });
    //   errorString = concatenate.toString();
    // }else if((errorResponse.birth_date?.length ?? 0) > 0){
    //   errorResponse.birth_date?.forEach((item) {
    //     concatenate.write(item);
    //   });
    //   errorString = concatenate.toString();
    // }
    return errorString;
  }


  @override
  String toString() => message;
}