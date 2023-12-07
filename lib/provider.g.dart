// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCardListHash() => r'da8f0c0316983c57e7bbbee1ab1689b9e1f5e304';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
