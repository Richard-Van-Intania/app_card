import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String citizenId,
    required List<Card> cards,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
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
