import 'package:app_card/provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),
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
  final PageController controller = PageController(keepPage: true);

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<CardWithStatement>> cardList = ref.watch(fetchCardListProvider);
    final int currentCardIndex = ref.watch(currentCardIndexProvider);
    final String dropdownString = ref.watch(dropdownMenuListProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: switch (cardList) {
            AsyncData(:final value) => value.isNotEmpty
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 16.0),
                      SizedBox(
                        height: 300.0,
                        child: PageView.builder(
                          controller: controller,
                          itemCount: value.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Image.network(
                              value[index].card.cardImageUrl,
                            );
                          },
                          onPageChanged: (int value) {
                            ref.read(currentCardIndexProvider.notifier).update(value);
                          },
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: controller,
                        count: value.length,
                        effect: WormEffect(dotHeight: 8.0, dotWidth: 8.0, activeDotColor: Theme.of(context).colorScheme.primary, dotColor: Theme.of(context).colorScheme.primaryContainer),
                      ),
                      const SizedBox(height: 16.0),
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
                          children: [
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [Text('AVAILABLE CREDIT'), Spacer(), Text('CREDIT LIMIT')],
                                    ),
                                    Row(
                                      children: [
                                        Text(value[currentCardIndex].card.availableCredit.toString()),
                                        Spacer(),
                                        Text(value[currentCardIndex].card.creditLimit.toString()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 32.0,
                                    ),
                                    Row(
                                      children: [Text('MIN PAY'), Spacer(), Text('FULL PAY')],
                                    ),
                                    Row(
                                      children: [
                                        Text(value[currentCardIndex].card.minPay.toString()),
                                        Spacer(),
                                        Text(value[currentCardIndex].card.fullPay.toString()),
                                      ],
                                    ),
                                    const Divider(),
                                    Row(
                                      children: [Text('STATEMENT DATE'), Spacer(), Text('DUE DATE')],
                                    ),
                                    Row(
                                      children: [
                                        Text(value[currentCardIndex].card.statementDate),
                                        Spacer(),
                                        Text('duedate'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ListView.separated(
                              padding: const EdgeInsets.all(16.0),
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [Text(value[currentCardIndex].unbilledStatement[index].description), Spacer(), Text(value[currentCardIndex].unbilledStatement[index].amount.toString())],
                                    ),
                                    Text(value[currentCardIndex].unbilledStatement[index].statementDate)
                                  ],
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return const Divider();
                              },
                              itemCount: value[currentCardIndex].unbilledStatement.length,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('STATEMENT OF'),
                                      Spacer(),
                                      DropdownMenu<String>(
                                        initialSelection: dropdownString,
                                        onSelected: (String? value) {
                                          ref.read(dropdownMenuListProvider.notifier).select(value!);
                                        },
                                        dropdownMenuEntries: dropdownList.map<DropdownMenuEntry<String>>((String value) {
                                          return DropdownMenuEntry<String>(value: value, label: value);
                                        }).toList(),
                                        enableSearch: false,
                                      )
                                    ],
                                  ),
                                  const Divider(),
                                  Expanded(
                                    child: ListView.separated(
                                      padding: const EdgeInsets.all(16.0),
                                      itemBuilder: (BuildContext context, int index) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(value[currentCardIndex].billedStatement[dropdownString]![index].description),
                                                Spacer(),
                                                Text(value[currentCardIndex].billedStatement[dropdownString]![index].amount.toString()),
                                              ],
                                            ),
                                            Text(value[currentCardIndex].billedStatement[dropdownString]![index].statementDate),
                                          ],
                                        );
                                      },
                                      separatorBuilder: (BuildContext context, int index) {
                                        return const Divider();
                                      },
                                      itemCount: value[currentCardIndex].billedStatement[dropdownString]!.length,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : const Text('Oops!, something unexpected happened'),
            AsyncError() => const Text('Oops!, something unexpected happened'),
            _ => const CircularProgressIndicator(),
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
