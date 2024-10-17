import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';

abstract class MensajeSmsDatasource {
  Future<RespuestaSms> enviarMensaje(String mensaje, String cel);
}
