import 'dart:convert';

import 'package:app_card/model.dart';
import 'package:app_card/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
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
  void initState() {
    super.initState();
    ref.listenManual(cardResponseProvider, (previous, next) {
      print('debug');
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<CardResponse> cardResponse = ref.watch(cardResponseProvider);
    return Scaffold(
      body: Center(
        child: switch (cardResponse) {
          AsyncData(:final value) => Text('citizenId: ${value.citizenId}'),
          AsyncError() => const Text('Oops, something unexpected happened'),
          _ => const CircularProgressIndicator(),
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // final url = Uri.https('card-management-eajwtocuqa-as.a.run.app', '/v1/unbilled-statements', {'cardNumber': '4568111122223333'});
          // final response = await http.get(Uri.https('card-management-eajwtocuqa-as.a.run.app', '/v1/cards/1111111111111'));
          // final response = await http.get(Uri.https('card-management-eajwtocuqa-as.a.run.app', '/v1/unbilled-statements', {'cardNumber': '4568111122223333'}));
          final response = await http.get(Uri.https('card-management-eajwtocuqa-as.a.run.app', '/v1/billed-statements', {'cardNumber': '4568111122223333', 'asOf': '092023'}));
          // print('Response status: ${response.statusCode}');
          // final json = jsonDecode(response.body) as List<Statement>;
          // // final statement = Statement.fromJson(json);
          // print(json.length);
          // List<Statement> statement = (jsonDecode(response.body) as List).map((data) => Statement.fromJson(data)).toList();
          // final List<Statement> statement = parseStatement(response.body);
          final List<Statement> statement0 = await compute(parseStatement, response.body);
          print(statement0.first.description);
        },
      ),
    );
  }
}
