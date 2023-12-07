import 'package:app_card/provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'model.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<CardWithStatement>> cardList = ref.watch(fetchCardListProvider);
    final AsyncValue<List<Statement>> billedList = ref.watch(billedStatementListProvider('4568111122223333'));
    return Scaffold(
      body: Center(
        child: switch (billedList) {
          AsyncData(:final value) => Text('cards: ${value.length}'),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(),
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        ref.read(billedStatementListProvider('4568111122223333').notifier).fetchBilledStatement('4568111122223333', '072023');
      }),
    );
  }
}
