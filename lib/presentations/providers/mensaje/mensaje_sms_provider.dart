
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';

part 'mensaje_sms_provider.g.dart';

@riverpod
class MensajeSms extends _$MensajeSms {
  @override
  RespuestaSms build() {
    return RespuestaSms(mensaje: 'No ha sido Enviado!');
  }

  enviarMensaje({required String mensaje, required String cel}) {
    state = RespuestaSms(mensaje: 'Mensaje Enviado!');
  }
}