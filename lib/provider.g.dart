// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCardListHash() => r'173d410057001e53d117ae7181674dc7f3fd7b23';

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

/// See also [fetchCardList].
@ProviderFor(fetchCardList)
const fetchCardListProvider = FetchCardListFamily();

/// See also [fetchCardList].
class FetchCardListFamily extends Family<AsyncValue<List<CardWithStatement>>> {
  /// See also [fetchCardList].
  const FetchCardListFamily();

  /// See also [fetchCardList].
  FetchCardListProvider call(
    String citizenId,
  ) {
    return FetchCardListProvider(
      citizenId,
    );
  }

  @override
  FetchCardListProvider getProviderOverride(
    covariant FetchCardListProvider provider,
  ) {
    return call(
      provider.citizenId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies => _allTransitiveDependencies;

  @override
  String? get name => r'fetchCardListProvider';
}

/// See also [fetchCardList].
class FetchCardListProvider extends AutoDisposeFutureProvider<List<CardWithStatement>> {
  /// See also [fetchCardList].
  FetchCardListProvider(
    String citizenId,
  ) : this._internal(
          (ref) => fetchCardList(
            ref as FetchCardListRef,
            citizenId,
          ),
          from: fetchCardListProvider,
          name: r'fetchCardListProvider',
          debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$fetchCardListHash,
          dependencies: FetchCardListFamily._dependencies,
          allTransitiveDependencies: FetchCardListFamily._allTransitiveDependencies,
          citizenId: citizenId,
        );

  FetchCardListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.citizenId,
  }) : super.internal();

  final String citizenId;

  @override
  Override overrideWith(
    FutureOr<List<CardWithStatement>> Function(FetchCardListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchCardListProvider._internal(
        (ref) => create(ref as FetchCardListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        citizenId: citizenId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CardWithStatement>> createElement() {
    return _FetchCardListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchCardListProvider && other.citizenId == citizenId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, citizenId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchCardListRef on AutoDisposeFutureProviderRef<List<CardWithStatement>> {
  /// The parameter `citizenId` of this provider.
  String get citizenId;
}

class _FetchCardListProviderElement extends AutoDisposeFutureProviderElement<List<CardWithStatement>> with FetchCardListRef {
  _FetchCardListProviderElement(super.provider);

  @override
  String get citizenId => (origin as FetchCardListProvider).citizenId;
}

String _$generateDropdownListHash() => r'11ebe4a95795f64a9e3a1de4a9fabe71fe8592f6';

/// See also [generateDropdownList].
@ProviderFor(generateDropdownList)
final generateDropdownListProvider = AutoDisposeProvider<List<String>>.internal(
  generateDropdownList,
  name: r'generateDropdownListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$generateDropdownListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GenerateDropdownListRef = AutoDisposeProviderRef<List<String>>;
String _$currentCardIndexHash() => r'03a9bc088a6f47846a062c89c8aa189b160ec3ec';

/// See also [CurrentCardIndex].
@ProviderFor(CurrentCardIndex)
final currentCardIndexProvider = AutoDisposeNotifierProvider<CurrentCardIndex, int>.internal(
  CurrentCardIndex.new,
  name: r'currentCardIndexProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$currentCardIndexHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentCardIndex = AutoDisposeNotifier<int>;
String _$dropdownMenuListHash() => r'27ac30458196d2825cbde26d2849a62938001639';

/// See also [DropdownMenuList].
@ProviderFor(DropdownMenuList)
final dropdownMenuListProvider = AutoDisposeNotifierProvider<DropdownMenuList, String>.internal(
  DropdownMenuList.new,
  name: r'dropdownMenuListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$dropdownMenuListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DropdownMenuList = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
