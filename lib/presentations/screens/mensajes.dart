import 'package:flutter/material.dart';

class Mensajes extends StatelessWidget {
  const Mensajes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
                onChanged: (value) {
                  //PredictionRepositoryImpl prd = ref.watch(predictionRepositoryProviderProvider);                  
                },
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: 'A quien quieres molestar?... Escribele, anda, anda...!!!',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Icon(Icons.search_rounded),
                  )
              ),
          ),
          ElevatedButton(
            onPressed: ()=> print('Hola'), 
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
            child: Text('Envialo Ahora!!!, estoy Ansioso!!!!!'),
          )
        ],
      )
    );
  }
}