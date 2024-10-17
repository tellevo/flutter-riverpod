
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'enviar_provider.g.dart';

@riverpod
class EnviarProvider extends _$EnviarProvider {
  @override
  String build() {
    return "Enviado";
  }
}