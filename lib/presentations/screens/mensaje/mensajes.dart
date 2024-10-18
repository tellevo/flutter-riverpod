import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tellevo_arq_limpia/domain/entities/mensaje/respuesta_sms.dart';
import 'package:tellevo_arq_limpia/presentations/providers/mensaje/contador_provider.dart';
import 'package:tellevo_arq_limpia/presentations/providers/mensaje/mensaje_sms_provider.dart';

class Mensajes extends StatelessWidget {
  const Mensajes({super.key});

  @override
  Widget build(BuildContext context) {
    final celController = TextEditingController();
    final mensajeController = TextEditingController();

    return SafeArea(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _CircularButton(),
          _MensajeTexto(celController, mensajeController),
          _BotonEnviarMensaje(celController, mensajeController),
        ],
      )),
    );
  }
}

class _BotonEnviarMensaje extends ConsumerWidget {
  const _BotonEnviarMensaje(this.celController, this.mensajeController);

  final TextEditingController celController;
  final TextEditingController mensajeController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /*  AsyncValue<RespuestaSms> r = ref.watch(
          mensajeSms2Provider(mensajeController.value.text, celController.value.text.isEmpty? '+56963723603' : celController.value.text)
    );*/

    // Al ser un ConsumerWidget de riverpod, tenemos acceso a los providers definidos. Estos se toman del main.dart
    // Como es un boton, vamos a hacer que cambie el valor del boton circular.
    return ElevatedButton(
      onPressed: () async {
        // Aquí va la acción que se ejecuta al presionar el botón
        ref.read(contadorProviderProvider.notifier).increment();
        // Aqui el envio del mensaje de texto al telefono por la API textflow.me

        final respuesta = ref.read(mensajeSmsProvider.notifier).enviarMensaje(
            mensaje: mensajeController.value.text,
            cel: celController.value.text.isEmpty
                ? '+56963723603'
                : celController.value.text);

        respuesta.then((value) => {print('Mensaje: ' + value.mensajeResultadoApi)},
            onError: (error) {
          print('No se pudo enviar el mensaje');
        });

        /*
        switch (respuesta.) {
          case AsyncData(:final value): 
            print('Mensaje enviado correctamente: ${value.mensaje}');
            break;
          case AsyncLoading<RespuestaSms>():
            print('Enviando el mensaje...');
            break;
          case AsyncError<RespuestaSms>():
            print('No se pudo enviar el mensaje');
            break;
          default:
            print('Error desconocido');
        }*/
      },
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black87,
          backgroundColor: Colors.yellow[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      child: Text('Envialo Ahora!!!, Yaaaaaaaaa!!!!!'),
    );
  }
}

class _MensajeTexto extends StatelessWidget {
  _MensajeTexto(this.celController, this.mensajeController);

  final TextEditingController celController;
  final TextEditingController mensajeController;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            controller: celController,
            onChanged: (value) {
              //PredictionRepositoryImpl prd = ref.watch(predictionRepositoryProviderProvider);
            },
            decoration: InputDecoration(
              hintText: '+569xxxxxxxxx',
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Icon(Icons.phone_rounded),
              ),
            ),
          ),
          TextFormField(
            controller: mensajeController,
            onChanged: (value) {
              //PredictionRepositoryImpl prd = ref.watch(predictionRepositoryProviderProvider);
            },
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
                hintText: '',
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Icon(Icons.message_rounded),
                )),
          ),
        ]);
  }
}

class _CircularButton extends ConsumerWidget {
  const _CircularButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Al ser un ConsumerWidget de riverpod, tenemos acceso a los providers definidos. Estos esta declarado asi desde el main.dart

    // Entonces ahora quedo a la escuchar el valor del contadorProvider y mostrar el botón circular con el valor actualizado.
    final number = ref.watch(contadorProviderProvider);

    return GestureDetector(
      onTap: () {
        // Acción que se ejecuta al presionar el botón
        print('Botón presionado: $number');
      },
      child: Container(
        width: 100.0, // Ancho del botón
        height: 100.0, // Alto del botón
        decoration: BoxDecoration(
          color: Colors.green, // Color de fondo
          shape: BoxShape.circle, // Forma circular
        ),
        child: Center(
          child: Text(
            '$number',
            style: TextStyle(
              color: Colors.white, // Color del texto
              fontSize: 24.0, // Tamaño de la fuente
            ),
          ),
        ),
      ),
    );
  }
}
