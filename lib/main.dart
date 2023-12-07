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

class _HomePageState extends ConsumerState<HomePage> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<CardWithStatement>> cardList = ref.watch(fetchCardListProvider);
    final AsyncValue<List<Statement>> billedList = ref.watch(billedStatementListProvider('4568111122223333'));
    return Scaffold(
      body: Center(
        child: switch (cardList) {
          AsyncData(:final value) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: PageView.builder(
                    itemCount: value.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        value[index].card.cardImageUrl,
                      );
                    },
                    onPageChanged: (int value) {
                      print(value.toString());
                    },
                  ),
                ),
                TabBar(
                  controller: tabController,
                  tabs: const <Widget>[
                    Tab(
                      child: Text('ACCOUNT INFO'),
                    ),
                    Tab(
                      child: Text('UNBILLED'),
                    ),
                    Tab(
                      child: Text('BILLED'),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const <Widget>[
                      Center(
                        child: Text("It's cloudy here"),
                      ),
                      Center(
                        child: Text("It's rainy here"),
                      ),
                      Center(
                        child: Text("It's sunny here"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
