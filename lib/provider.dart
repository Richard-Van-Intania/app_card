import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'model.dart';

part 'provider.g.dart';

@riverpod
Future<CardResponse> cardResponse(CardResponseRef ref) async {
  final response = await http.get(Uri(
    scheme: 'https',
    host: 'card-management-eajwtocuqa-as.a.run.app',
    path: '/v1/cards/1111111111111',
  ));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return CardResponse.fromJson(json);
}

@riverpod
class BilledStatementList extends _$BilledStatementList {
  @override
  List<Statement> build() {
    return [];
  }

  Future<List<Statement>> fetch(String cardNumber, String asOf) async {
    final response = await http.get(Uri(
      scheme: 'https',
      host: 'card-management-eajwtocuqa-as.a.run.app',
      path: '/v1/billed-statements',
      queryParameters: {'cardNumber': cardNumber, 'asOf': asOf},
    ));
    final List<Statement> statement = await compute(parseStatement, response.body);
    return statement;
  }
}

@riverpod
class UnbilledStatementList extends _$UnbilledStatementList {
  @override
  List<Statement> build() {
    return [];
  }

  Future<List<Statement>> fetch(String cardNumber) async {
    final response = await http.get(Uri(
      scheme: 'https',
      host: 'card-management-eajwtocuqa-as.a.run.app',
      path: '/v1/unbilled-statements',
      queryParameters: {'cardNumber': cardNumber},
    ));
    final List<Statement> statement = await compute(parseStatement, response.body);
    return statement;
  }
}
