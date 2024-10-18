import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';

// Firma o contrato de la forma de enviar mensaje. Esta debe ser la firma o contrato de quien implemente la clase MensajeSmsDatasource
abstract class MensajeSmsDataSource {
  Future<RespuestaSms> enviarMensaje(String mensaje, String cel);
}
