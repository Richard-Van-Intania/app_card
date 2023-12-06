// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCardListHash() => r'a4e79da9539a65cdec8030a1fd79f6f7339a6e00';

/// See also [fetchCardList].
@ProviderFor(fetchCardList)
final fetchCardListProvider = AutoDisposeFutureProvider<List<CardWithStatement>>.internal(
  fetchCardList,
  name: r'fetchCardListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$fetchCardListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchCardListRef = AutoDisposeFutureProviderRef<List<CardWithStatement>>;
String _$fetchBilledStatementHash() => r'3ef69723241ca6a3a73598141b7a6f61b7f2cfa8';

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

/// See also [fetchBilledStatement].
@ProviderFor(fetchBilledStatement)
const fetchBilledStatementProvider = FetchBilledStatementFamily();

/// See also [fetchBilledStatement].
class FetchBilledStatementFamily extends Family<AsyncValue<List<Statement>>> {
  /// See also [fetchBilledStatement].
  const FetchBilledStatementFamily();

  /// See also [fetchBilledStatement].
  FetchBilledStatementProvider call(
    String cardNumber,
    String asOf,
  ) {
    return FetchBilledStatementProvider(
      cardNumber,
      asOf,
    );
  }

  @override
  FetchBilledStatementProvider getProviderOverride(
    covariant FetchBilledStatementProvider provider,
  ) {
    return call(
      provider.cardNumber,
      provider.asOf,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'fetchBilledStatementProvider';
}

/// See also [fetchBilledStatement].
class FetchBilledStatementProvider extends AutoDisposeFutureProvider<List<Statement>> {
  /// See also [fetchBilledStatement].
  FetchBilledStatementProvider(
    String cardNumber,
    String asOf,
  ) : this._internal(
          (ref) => fetchBilledStatement(
            ref as FetchBilledStatementRef,
            cardNumber,
            asOf,
          ),
          from: fetchBilledStatementProvider,
          name: r'fetchBilledStatementProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$fetchBilledStatementHash,
          dependencies: FetchBilledStatementFamily._dependencies,
          allTransitiveDependencies: FetchBilledStatementFamily._allTransitiveDependencies,
          cardNumber: cardNumber,
          asOf: asOf,
        );

  FetchBilledStatementProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cardNumber,
    required this.asOf,
  }) : super.internal();

  final String cardNumber;
  final String asOf;

  @override
  Override overrideWith(
    FutureOr<List<Statement>> Function(FetchBilledStatementRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchBilledStatementProvider._internal(
        (ref) => create(ref as FetchBilledStatementRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cardNumber: cardNumber,
        asOf: asOf,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Statement>> createElement() {
    return _FetchBilledStatementProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchBilledStatementProvider && other.cardNumber == cardNumber && other.asOf == asOf;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cardNumber.hashCode);
    hash = _SystemHash.combine(hash, asOf.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchBilledStatementRef on AutoDisposeFutureProviderRef<List<Statement>> {
  /// The parameter `cardNumber` of this provider.
  String get cardNumber;

  /// The parameter `asOf` of this provider.
  String get asOf;
}

class _FetchBilledStatementProviderElement extends AutoDisposeFutureProviderElement<List<Statement>> with FetchBilledStatementRef {
  _FetchBilledStatementProviderElement(super.provider);

  @override
  String get cardNumber => (origin as FetchBilledStatementProvider).cardNumber;
  @override
  String get asOf => (origin as FetchBilledStatementProvider).asOf;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
