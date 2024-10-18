// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mensaje_sms_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mensajeSmsHash() => r'27f0f9094d3d7efa5b7a332fd5619cb290fc12cc';

/// See also [MensajeSms].
@ProviderFor(MensajeSms)
final mensajeSmsProvider =
    AutoDisposeAsyncNotifierProvider<MensajeSms, RespuestaSms>.internal(
  MensajeSms.new,
  name: r'mensajeSmsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$mensajeSmsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MensajeSms = AutoDisposeAsyncNotifier<RespuestaSms>;
String _$mensajeSms2Hash() => r'536c61ec5ea1d8614620ef04e21c28d4e6d14c28';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$MensajeSms2
    extends BuildlessAutoDisposeAsyncNotifier<RespuestaSms> {
  late final String mensaje;
  late final String cel;

  FutureOr<RespuestaSms> build(
    String mensaje,
    String cel,
  );
}

/// See also [MensajeSms2].
@ProviderFor(MensajeSms2)
const mensajeSms2Provider = MensajeSms2Family();

/// See also [MensajeSms2].
class MensajeSms2Family extends Family {
  /// See also [MensajeSms2].
  const MensajeSms2Family();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'mensajeSms2Provider';

  /// See also [MensajeSms2].
  MensajeSms2Provider call(
    String mensaje,
    String cel,
  ) {
    return MensajeSms2Provider(
      mensaje,
      cel,
    );
  }

  @visibleForOverriding
  @override
  MensajeSms2Provider getProviderOverride(
    covariant MensajeSms2Provider provider,
  ) {
    return call(
      provider.mensaje,
      provider.cel,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(MensajeSms2 Function() create) {
    return _$MensajeSms2FamilyOverride(this, create);
  }
}

class _$MensajeSms2FamilyOverride implements FamilyOverride {
  _$MensajeSms2FamilyOverride(this.overriddenFamily, this.create);

  final MensajeSms2 Function() create;

  @override
  final MensajeSms2Family overriddenFamily;

  @override
  MensajeSms2Provider getProviderOverride(
    covariant MensajeSms2Provider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [MensajeSms2].
class MensajeSms2Provider
    extends AutoDisposeAsyncNotifierProviderImpl<MensajeSms2, RespuestaSms> {
  /// See also [MensajeSms2].
  MensajeSms2Provider(
    String mensaje,
    String cel,
  ) : this._internal(
          () => MensajeSms2()
            ..mensaje = mensaje
            ..cel = cel,
          from: mensajeSms2Provider,
          name: r'mensajeSms2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mensajeSms2Hash,
          dependencies: MensajeSms2Family._dependencies,
          allTransitiveDependencies:
              MensajeSms2Family._allTransitiveDependencies,
          mensaje: mensaje,
          cel: cel,
        );

  MensajeSms2Provider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mensaje,
    required this.cel,
  }) : super.internal();

  final String mensaje;
  final String cel;

  @override
  FutureOr<RespuestaSms> runNotifierBuild(
    covariant MensajeSms2 notifier,
  ) {
    return notifier.build(
      mensaje,
      cel,
    );
  }

  @override
  Override overrideWith(MensajeSms2 Function() create) {
    return ProviderOverride(
      origin: this,
      override: MensajeSms2Provider._internal(
        () => create()
          ..mensaje = mensaje
          ..cel = cel,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mensaje: mensaje,
        cel: cel,
      ),
    );
  }

  @override
  (
    String,
    String,
  ) get argument {
    return (
      mensaje,
      cel,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MensajeSms2, RespuestaSms>
      createElement() {
    return _MensajeSms2ProviderElement(this);
  }

  MensajeSms2Provider _copyWith(
    MensajeSms2 Function() create,
  ) {
    return MensajeSms2Provider._internal(
      () => create()
        ..mensaje = mensaje
        ..cel = cel,
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      mensaje: mensaje,
      cel: cel,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MensajeSms2Provider &&
        other.mensaje == mensaje &&
        other.cel == cel;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mensaje.hashCode);
    hash = _SystemHash.combine(hash, cel.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MensajeSms2Ref on AutoDisposeAsyncNotifierProviderRef<RespuestaSms> {
  /// The parameter `mensaje` of this provider.
  String get mensaje;

  /// The parameter `cel` of this provider.
  String get cel;
}

class _MensajeSms2ProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MensajeSms2, RespuestaSms>
    with MensajeSms2Ref {
  _MensajeSms2ProviderElement(super.provider);

  @override
  String get mensaje => (origin as MensajeSms2Provider).mensaje;
  @override
  String get cel => (origin as MensajeSms2Provider).cel;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
