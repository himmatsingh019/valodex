import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:valodex/utils/constant.dart';

class DioBaseService extends GetxController {
  Dio _dioClient = Dio(
    BaseOptions(
      baseUrl: baseURL,
    ),
  );

  Dio get dioClient => _dioClient;
}
