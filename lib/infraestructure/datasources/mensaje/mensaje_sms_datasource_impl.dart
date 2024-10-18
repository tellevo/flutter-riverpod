

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tellevo_arq_limpia/config/environment.dart';
import 'package:tellevo_arq_limpia/domain/datasources/mensaje/mensaje_sms_datasource.dart';
import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';

class MensajeSmsDataSourceImpl implements MensajeSmsDataSource {
    final dio = Dio(BaseOptions(
    baseUrl:
        "$Environment.HOST_TEXT_FLOW_API",
        headers: {
          'Content-Type': 'application/json',
          'Authorization':'Bearer $Environment.TEXT_FLOW_API_KEY',
          'x-rapidapi-host':'textflow-sms-api.p.rapidapi.com'
        },
    ));

  @override
  Future<RespuestaSms> enviarMensaje(String mensaje, String cel) async {
      final response =
        await dio.post(Environment.CONTEXT_SEND_SMS, data: jsonEncode({"phone_number":cel,"text":mensaje}));
    final responseData = ResponseData.fromJson(response.data);
    final Respuesta r = RespuestaMapper.responseApiToEntity(responseApi);
    return r;
  }
}
