import 'package:app_card/provider.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 108, 139)),
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
  final NumberFormat numberFormat = NumberFormat.decimalPattern('en_us');

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
    final String currentDropdownSelect = ref.watch(dropdownMenuListProvider);
    final List<String> dropdownList = ref.watch(generateDropdownListProvider);
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
                            return Image.network(value[index].card.cardImageUrl);
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
                          Tab(child: FittedBox(child: Text('ACCOUNT INFO', style: TextStyle(fontWeight: FontWeight.bold)))),
                          Tab(child: FittedBox(child: Text('UNBILLED', style: TextStyle(fontWeight: FontWeight.bold)))),
                          Tab(child: FittedBox(child: Text('BILLED', style: TextStyle(fontWeight: FontWeight.bold)))),
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
                                    const Row(children: [Text('AVAILABLE CREDIT'), Spacer(), Text('CREDIT LIMIT')]),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Text(numberFormat.format(value[currentCardIndex].card.availableCredit), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0)),
                                        const Spacer(),
                                        Text(numberFormat.format(value[currentCardIndex].card.creditLimit), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 27.0)),
                                      ],
                                    ),
                                    const SizedBox(height: 56.0),
                                    const Row(children: [Text('MIN PAY'), Spacer(), Text('FULL PAY')]),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Text(numberFormat.format(value[currentCardIndex].card.minPay), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                                        const Spacer(),
                                        Text(numberFormat.format(value[currentCardIndex].card.fullPay), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    const Divider(),
                                    const SizedBox(height: 8.0),
                                    const Row(children: [Text('STATEMENT DATE'), Spacer(), Text('DUE DATE')]),
                                    const SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Text(DateFormat('d MMM y').format(DateTime.parse(value[currentCardIndex].card.statementDate)), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                                        const Spacer(),
                                        Text(DateFormat('d MMM y').format(DateTime.parse(value[currentCardIndex].card.dueDate)), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
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
                                      children: [
                                        FittedBox(child: Text(value[currentCardIndex].unbilledStatement[index].description, style: const TextStyle(fontWeight: FontWeight.bold))),
                                        const Spacer(),
                                        Text('${numberFormat.format(value[currentCardIndex].unbilledStatement[index].amount)} THB', style: const TextStyle(fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Text(DateFormat('d MMM').format(DateTime.parse(value[currentCardIndex].unbilledStatement[index].statementDate)), style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
                                    const SizedBox(height: 8.0),
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
                                      const Text('STATEMENT OF', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                                      const Spacer(),
                                      DropdownMenu<String>(
                                        initialSelection: currentDropdownSelect,
                                        onSelected: (String? value) {
                                          ref.read(dropdownMenuListProvider.notifier).select(value!);
                                        },
                                        dropdownMenuEntries: dropdownList.map<DropdownMenuEntry<String>>((String value) {
                                          return DropdownMenuEntry<String>(value: value, label: DateFormat.yMMM().format(DateTime(2023, int.parse(value[1]))));
                                        }).toList(),
                                        enableSearch: false,
                                        textStyle: const TextStyle(fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 16.0),
                                  const DottedLine(dashColor: Colors.grey),
                                  const SizedBox(height: 16.0),
                                  Expanded(
                                    child: ListView.separated(
                                      itemBuilder: (BuildContext context, int index) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(value[currentCardIndex].billedStatement[currentDropdownSelect]![index].description, style: const TextStyle(fontWeight: FontWeight.bold)),
                                                const Spacer(),
                                                Text('${numberFormat.format(value[currentCardIndex].billedStatement[currentDropdownSelect]![index].amount)} THB', style: const TextStyle(fontWeight: FontWeight.bold)),
                                              ],
                                            ),
                                            Text(DateFormat('d MMM').format(DateTime.parse(value[currentCardIndex].billedStatement[currentDropdownSelect]![index].statementDate)), style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
                                            const SizedBox(height: 8.0),
                                          ],
                                        );
                                      },
                                      separatorBuilder: (BuildContext context, int index) {
                                        return const Divider();
                                      },
                                      itemCount: value[currentCardIndex].billedStatement[currentDropdownSelect]!.length,
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
    );
  }
}
