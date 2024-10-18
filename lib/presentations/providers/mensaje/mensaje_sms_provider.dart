
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';
import 'package:tellevo_arq_limpia/infraestructure/datasources/mensaje/mensaje_sms_datasource_impl.dart';
import 'package:tellevo_arq_limpia/infraestructure/respositories/mensaje/mensaje_sms_repository_impl.dart';

part 'mensaje_sms_provider.g.dart';

@riverpod
class MensajeSms extends _$MensajeSms {
  @override
  Future<RespuestaSms> build() async {
    return RespuestaSms(contenidoEnviado: 'No ha sido Enviado!', mensajeResultadoApi: 'Sin Resultado');
  }

  Future<RespuestaSms> enviarMensaje({required String mensaje, required String cel}) async {
    final MensajeSmsRepositoryImpl repository = MensajeSmsRepositoryImpl(dataSource:  MensajeSmsDataSourceImpl());
    return await repository.enviarMensaje(mensaje, cel);
  }
}

@riverpod
class MensajeSms2 extends _$MensajeSms2 {

  @override
  Future<RespuestaSms> build(String mensaje, String cel) async {
    final MensajeSmsRepositoryImpl repository = MensajeSmsRepositoryImpl(dataSource:  MensajeSmsDataSourceImpl());
    return await repository.enviarMensaje(mensaje, cel);
  }
}