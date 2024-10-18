import 'package:tellevo_arq_limpia/infraestructure/models/mensaje/response_data.dart';

class ResponseApi {
  final bool ok;
  final int status;
  final String message;
  final ResponseData data;

  ResponseApi({required this.ok, required this.status, required this.message, required this.data});
  
  factory ResponseApi.fromJson(Map<String, dynamic> json) {
    return ResponseApi(
      ok: json['ok'],
      status: json['status'],
      message: json['message'],
      data: ResponseData.fromJson(json['data']),
    );
  }
}