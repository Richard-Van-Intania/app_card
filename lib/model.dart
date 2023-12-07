import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class CardResponse with _$CardResponse {
  const factory CardResponse({
    required String citizenId,
    required List<Card> cards,
  }) = _CardResponse;

  factory CardResponse.fromJson(Map<String, Object?> json) => _$CardResponseFromJson(json);
}

@freezed
class Card with _$Card {
  const factory Card({
    required String cardName,
    required String cardHolderName,
    required String cardNumber,
    required String cardImageUrl,
    required double creditLimit,
    required double availableCredit,
    required double minPay,
    required double fullPay,
    required String statementDate,
    required String dueDate,
  }) = _Card;

  factory Card.fromJson(Map<String, Object?> json) => _$CardFromJson(json);
}

@freezed
class Statement with _$Statement {
  factory Statement({
    required String description,
    required String statementDate,
    required double amount,
  }) = _Statement;

  factory Statement.fromJson(Map<String, Object?> json) => _$StatementFromJson(json);
}

List<Statement> parseStatement(String responseBody) {
  final parsed = (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();
  return parsed.map<Statement>((json) => Statement.fromJson(json)).toList();
}

class CardWithStatement {
  CardWithStatement({required this.card, required this.unbilledStatement, required this.billedStatement});
  final Card card;
  final List<Statement> unbilledStatement;
  final Map<String, List<Statement>> billedStatement;
}

const List<String> list = <String>['092023', '082023', '072023', '062023', '052023', '042023', '032023'];
