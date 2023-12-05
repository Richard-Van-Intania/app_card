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