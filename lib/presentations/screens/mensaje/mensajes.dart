import 'package:flutter/material.dart';

class Mensajes extends StatelessWidget {
  const Mensajes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _CircularButton(number: 0),
        _MensajeTexto(),
        _BotonEnviarMensaje(),
      ],
    ));
  }
}

class _BotonEnviarMensaje extends StatelessWidget {
  const _BotonEnviarMensaje({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print('Hola'),
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      child: Text('Envialo Ahora!!!, estoy Ansioso!!!!!'),
    );
  }
}

class _MensajeTexto extends StatelessWidget {
  const _MensajeTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column
    (
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
          onChanged: (value) {
            //PredictionRepositoryImpl prd = ref.watch(predictionRepositoryProviderProvider);
          },          
          decoration: InputDecoration(
              hintText: 'Escribe con +569xxxxxxxxx, y te enviaremos un mensaje de texto',
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Icon(Icons.phone_rounded),
              ),
            ),
        ),
        TextFormField(
          onChanged: (value) {
            //PredictionRepositoryImpl prd = ref.watch(predictionRepositoryProviderProvider);
          },
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
              hintText: 'A quien quieres molestar?... Escribele, anda, anda...!!!',
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Icon(Icons.message_rounded),
              )),
        ),
      ]
    );
  }
}

class _CircularButton extends StatelessWidget {
  final int number;

  const _CircularButton({required this.number});

  @override
  Widget build(BuildContext context) {
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
