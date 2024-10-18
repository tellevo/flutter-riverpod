import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';
import 'package:tellevo_arq_limpia/infraestructure/datasources/mensaje/mensaje_sms_datasource_impl.dart';
import 'package:tellevo_arq_limpia/infraestructure/respositories/mensaje/mensaje_sms_repository_impl.dart';

part 'mensaje_sms_provider.g.dart';

@riverpod
class MensajeSmsNotifier extends _$MensajeSmsNotifier {
  @override
  Future<RespuestaSms> build() async {
    return RespuestaSms(
        contenidoEnviado: 'No ha sido Enviado!',
        mensajeResultadoApi: '');
  }

  Future<void> enviarMensaje(String mensaje, String cel) async {
    state = AsyncValue.loading();

    try {
      final MensajeSmsRepositoryImpl repository =
          MensajeSmsRepositoryImpl(dataSource: MensajeSmsDataSourceImpl());
      final RespuestaSms respuesta =
          await repository.enviarMensaje(mensaje, cel);
      state = AsyncData(respuesta);
    } catch (e) {
      state = AsyncError('Error al enviar el mensaje', StackTrace.current);
    }
  }
}
