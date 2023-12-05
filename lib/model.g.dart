// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardResponseImpl _$$CardResponseImplFromJson(Map<String, dynamic> json) => _$CardResponseImpl(
      citizenId: json['citizenId'] as String,
      cards: (json['cards'] as List<dynamic>).map((e) => Card.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$CardResponseImplToJson(_$CardResponseImpl instance) => <String, dynamic>{
      'citizenId': instance.citizenId,
      'cards': instance.cards,
    };

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      cardName: json['cardName'] as String,
      cardHolderName: json['cardHolderName'] as String,
      cardNumber: json['cardNumber'] as String,
      cardImageUrl: json['cardImageUrl'] as String,
      creditLimit: (json['creditLimit'] as num).toDouble(),
      availableCredit: (json['availableCredit'] as num).toDouble(),
      minPay: (json['minPay'] as num).toDouble(),
      fullPay: (json['fullPay'] as num).toDouble(),
      statementDate: json['statementDate'] as String,
      dueDate: json['dueDate'] as String,
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) => <String, dynamic>{
      'cardName': instance.cardName,
      'cardHolderName': instance.cardHolderName,
      'cardNumber': instance.cardNumber,
      'cardImageUrl': instance.cardImageUrl,
      'creditLimit': instance.creditLimit,
      'availableCredit': instance.availableCredit,
      'minPay': instance.minPay,
      'fullPay': instance.fullPay,
      'statementDate': instance.statementDate,
      'dueDate': instance.dueDate,
    };

_$StatementImpl _$$StatementImplFromJson(Map<String, dynamic> json) => _$StatementImpl(
      description: json['description'] as String,
      statementDate: json['statementDate'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$StatementImplToJson(_$StatementImpl instance) => <String, dynamic>{
      'description': instance.description,
      'statementDate': instance.statementDate,
      'amount': instance.amount,
    };
