import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tellevo_arq_limpia/config/environment.dart';
import 'package:tellevo_arq_limpia/domain/datasources/mensaje/mensaje_sms_datasource.dart';
import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';
import 'package:tellevo_arq_limpia/infraestructure/mappers/mensaje/respuesta_mapper.dart';
import 'package:tellevo_arq_limpia/infraestructure/models/mensaje/response_api.dart';

class MensajeSmsDataSourceImpl implements MensajeSmsDataSource {
    final dio = Dio(BaseOptions(
    baseUrl:
        Environment.HOST_TEXT_FLOW_API,
        headers: {
          'Content-Type': 'application/json',
          'Authorization':'Bearer ' + Environment.TEXT_FLOW_API_KEY,
        },
    ));

  @override
  Future<RespuestaSms> enviarMensaje(String mensaje, String cel) async {

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        print('================COORDENADA REQUEST ====================');
        print('Request URL PATH: ${options.path}');
        print('Request URL DATA: ${options.data}');
        print('Request URL URI: ${options.uri}');
        print('Request URL HEADERS: ${options.headers}');
        print('Handle isCompleted: ${handler.isCompleted}');
        print('====================================');
        return handler.next(options);
      },
    ));


    final response =
      await dio.post(Environment.CONTEXT_SEND_SMS, data: jsonEncode({"phone_number":cel,"text":mensaje}));

    final responseData = ResponseApi.fromJson(response.data);
    final RespuestaSms r = RespuestaMapper.responseApiToEntity(responseData);
    return r;
  }
}
