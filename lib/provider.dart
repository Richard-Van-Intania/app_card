import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'model.dart';

part 'provider.g.dart';

@riverpod
Future<List<CardWithStatement>> fetchCardList(FetchCardListRef ref) async {
  List<CardWithStatement> list = [];
  final response = await http.get(Uri(
    scheme: 'https',
    host: 'card-management-eajwtocuqa-as.a.run.app',
    path: '/v1/cards/1111111111111',
  ));
  final Map<String, dynamic> json = jsonDecode(response.body) as Map<String, dynamic>;
  final List<Card> cardList = CardResponse.fromJson(json).cards;
  if (cardList.isEmpty) {
    return list;
  } else {
    for (final element in cardList) {
      final response = await http.get(Uri(
        scheme: 'https',
        host: 'card-management-eajwtocuqa-as.a.run.app',
        path: '/v1/unbilled-statements',
        queryParameters: {'cardNumber': element.cardNumber},
      ));
      final List<Statement> unbilledStatement = await compute(parseStatement, response.body);
      list.add(CardWithStatement(card: element, unbilledStatement: unbilledStatement));
    }
    return list;
  }
}

@riverpod
class BilledStatementList extends _$BilledStatementList {
  @override
  Future<List<Statement>> build(String cardNumber) async {
    final response = await http.get(Uri(
      scheme: 'https',
      host: 'card-management-eajwtocuqa-as.a.run.app',
      path: '/v1/billed-statements',
      queryParameters: {'cardNumber': cardNumber, 'asOf': '092023'},
    ));
    final List<Statement> billedStatement = await compute(parseStatement, response.body);
    return billedStatement;
  }

  Future<void> fetchBilledStatement(String cardNumber, String asOf) async {
    final response = await http.get(Uri(
      scheme: 'https',
      host: 'card-management-eajwtocuqa-as.a.run.app',
      path: '/v1/billed-statements',
      queryParameters: {'cardNumber': cardNumber, 'asOf': asOf},
    ));
    final List<Statement> billedStatement = await compute(parseStatement, response.body);
    state = AsyncData(billedStatement);
    ref.notifyListeners();
  }
}

@riverpod
class CurrentCardIndex extends _$CurrentCardIndex {
  @override
  int build() => 0;

  void update(int index) => state = index;
}
