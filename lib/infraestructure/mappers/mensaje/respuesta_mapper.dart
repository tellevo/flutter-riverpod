import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';
import 'package:tellevo_arq_limpia/infraestructure/models/mensaje/response_api.dart';

class RespuestaMapper {
  static RespuestaSms responseApiToEntity(ResponseApi responseData) {
    return RespuestaSms(contenidoEnviado: responseData.data.content, mensajeResultadoApi: responseData.message);
  }
}
