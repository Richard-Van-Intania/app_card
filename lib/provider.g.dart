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
String _$billedStatementListHash() => r'1e904dce27c50809c4bde41e01b6bfddc6c038b0';

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

abstract class _$BilledStatementList extends BuildlessAutoDisposeAsyncNotifier<List<Statement>> {
  late final String cardNumber;

  FutureOr<List<Statement>> build(
    String cardNumber,
  );
}

/// See also [BilledStatementList].
@ProviderFor(BilledStatementList)
const billedStatementListProvider = BilledStatementListFamily();

/// See also [BilledStatementList].
class BilledStatementListFamily extends Family<AsyncValue<List<Statement>>> {
  /// See also [BilledStatementList].
  const BilledStatementListFamily();

  /// See also [BilledStatementList].
  BilledStatementListProvider call(
    String cardNumber,
  ) {
    return BilledStatementListProvider(
      cardNumber,
    );
  }

  @override
  BilledStatementListProvider getProviderOverride(
    covariant BilledStatementListProvider provider,
  ) {
    return call(
      provider.cardNumber,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'billedStatementListProvider';
}

/// See also [BilledStatementList].
class BilledStatementListProvider extends AutoDisposeAsyncNotifierProviderImpl<BilledStatementList, List<Statement>> {
  /// See also [BilledStatementList].
  BilledStatementListProvider(
    String cardNumber,
  ) : this._internal(
          () => BilledStatementList()..cardNumber = cardNumber,
          from: billedStatementListProvider,
          name: r'billedStatementListProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$billedStatementListHash,
          dependencies: BilledStatementListFamily._dependencies,
          allTransitiveDependencies: BilledStatementListFamily._allTransitiveDependencies,
          cardNumber: cardNumber,
        );

  BilledStatementListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cardNumber,
  }) : super.internal();

  final String cardNumber;

  @override
  FutureOr<List<Statement>> runNotifierBuild(
    covariant BilledStatementList notifier,
  ) {
    return notifier.build(
      cardNumber,
    );
  }

  @override
  Override overrideWith(BilledStatementList Function() create) {
    return ProviderOverride(
      origin: this,
      override: BilledStatementListProvider._internal(
        () => create()..cardNumber = cardNumber,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cardNumber: cardNumber,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BilledStatementList, List<Statement>> createElement() {
    return _BilledStatementListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BilledStatementListProvider && other.cardNumber == cardNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cardNumber.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BilledStatementListRef on AutoDisposeAsyncNotifierProviderRef<List<Statement>> {
  /// The parameter `cardNumber` of this provider.
  String get cardNumber;
}

class _BilledStatementListProviderElement extends AutoDisposeAsyncNotifierProviderElement<BilledStatementList, List<Statement>> with BilledStatementListRef {
  _BilledStatementListProviderElement(super.provider);

  @override
  String get cardNumber => (origin as BilledStatementListProvider).cardNumber;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
