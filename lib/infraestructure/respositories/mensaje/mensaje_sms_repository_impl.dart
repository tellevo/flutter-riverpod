import 'package:tellevo_arq_limpia/domain/datasources/mensaje/mensaje_sms_datasource.dart';
import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';
import 'package:tellevo_arq_limpia/domain/repositories/mensaje/mensaje_sms_repository.dart';

class MensajeSmsRepositoryImpl implements MensajeSmsRepository {
  final MensajeSmsDataSource dataSource;

  MensajeSmsRepositoryImpl({required this.dataSource});

  @override
  Future<RespuestaSms> enviarMensaje(String mensaje, String cel) async {
    return await dataSource.enviarMensaje(mensaje, cel);
  }
}

  
  