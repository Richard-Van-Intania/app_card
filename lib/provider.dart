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
      Map<String, List<Statement>> billedStatement = {};
      for (var i = 9; i > 2; i--) {
        final response = await http.get(Uri(
          scheme: 'https',
          host: 'card-management-eajwtocuqa-as.a.run.app',
          path: '/v1/billed-statements',
          queryParameters: {'cardNumber': element.cardNumber, 'asOf': '0${i}2023'},
        ));
        final List<Statement> statement = await compute(parseStatement, response.body);
        billedStatement.addAll({'0${i}2023': statement});
      }
      list.add(CardWithStatement(card: element, unbilledStatement: unbilledStatement, billedStatement: billedStatement));
    }
    return list;
  }
}

@riverpod
class CurrentCardIndex extends _$CurrentCardIndex {
  @override
  int build() => 0;

  void update(int index) => state = index;
}

@riverpod
class DropdownMenuList extends _$DropdownMenuList {
  @override
  String build() => ref.watch(generateDropdownListProvider).first;

  void select(String value) => state = value;
}

@riverpod
List<String> generateDropdownList(GenerateDropdownListRef ref) {
  List<String> dropdownList = <String>[];
  for (var i = 9; i > 2; i--) {
    dropdownList.add('0${i}2023');
  }
  return dropdownList;
}
