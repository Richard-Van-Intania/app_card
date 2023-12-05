// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cardResponseHash() => r'da2c8ef2654821f47f489bb75e8c501d2d691a87';

/// See also [cardResponse].
@ProviderFor(cardResponse)
final cardResponseProvider = AutoDisposeFutureProvider<CardResponse>.internal(
  cardResponse,
  name: r'cardResponseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$cardResponseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CardResponseRef = AutoDisposeFutureProviderRef<CardResponse>;
String _$billedStatementListHash() => r'c322164910a10baee7985340f655f9411f055121';

/// See also [BilledStatementList].
@ProviderFor(BilledStatementList)
final billedStatementListProvider = AutoDisposeNotifierProvider<BilledStatementList, List<Statement>>.internal(
  BilledStatementList.new,
  name: r'billedStatementListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$billedStatementListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BilledStatementList = AutoDisposeNotifier<List<Statement>>;
String _$unbilledStatementListHash() => r'22f4a0f29a7c16b1807f9323df51374f74312d1a';

/// See also [UnbilledStatementList].
@ProviderFor(UnbilledStatementList)
final unbilledStatementListProvider = AutoDisposeNotifierProvider<UnbilledStatementList, List<Statement>>.internal(
  UnbilledStatementList.new,
  name: r'unbilledStatementListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product') ? null : _$unbilledStatementListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UnbilledStatementList = AutoDisposeNotifier<List<Statement>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
