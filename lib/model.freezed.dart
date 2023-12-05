// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardResponse _$CardResponseFromJson(Map<String, dynamic> json) {
  return _CardResponse.fromJson(json);
}

/// @nodoc
mixin _$CardResponse {
  String get citizenId => throw _privateConstructorUsedError;
  List<Card> get cards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardResponseCopyWith<CardResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardResponseCopyWith<$Res> {
  factory $CardResponseCopyWith(CardResponse value, $Res Function(CardResponse) then) = _$CardResponseCopyWithImpl<$Res, CardResponse>;
  @useResult
  $Res call({String citizenId, List<Card> cards});
}

/// @nodoc
class _$CardResponseCopyWithImpl<$Res, $Val extends CardResponse> implements $CardResponseCopyWith<$Res> {
  _$CardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizenId = null,
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      citizenId: null == citizenId
          ? _value.citizenId
          : citizenId // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardResponseImplCopyWith<$Res> implements $CardResponseCopyWith<$Res> {
  factory _$$CardResponseImplCopyWith(_$CardResponseImpl value, $Res Function(_$CardResponseImpl) then) = __$$CardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String citizenId, List<Card> cards});
}

/// @nodoc
class __$$CardResponseImplCopyWithImpl<$Res> extends _$CardResponseCopyWithImpl<$Res, _$CardResponseImpl> implements _$$CardResponseImplCopyWith<$Res> {
  __$$CardResponseImplCopyWithImpl(_$CardResponseImpl _value, $Res Function(_$CardResponseImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizenId = null,
    Object? cards = null,
  }) {
    return _then(_$CardResponseImpl(
      citizenId: null == citizenId
          ? _value.citizenId
          : citizenId // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<Card>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardResponseImpl with DiagnosticableTreeMixin implements _CardResponse {
  const _$CardResponseImpl({required this.citizenId, required final List<Card> cards}) : _cards = cards;

  factory _$CardResponseImpl.fromJson(Map<String, dynamic> json) => _$$CardResponseImplFromJson(json);

  @override
  final String citizenId;
  final List<Card> _cards;
  @override
  List<Card> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardResponse(citizenId: $citizenId, cards: $cards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardResponse'))
      ..add(DiagnosticsProperty('citizenId', citizenId))
      ..add(DiagnosticsProperty('cards', cards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CardResponseImpl && (identical(other.citizenId, citizenId) || other.citizenId == citizenId) && const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, citizenId, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardResponseImplCopyWith<_$CardResponseImpl> get copyWith => __$$CardResponseImplCopyWithImpl<_$CardResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardResponseImplToJson(
      this,
    );
  }
}

abstract class _CardResponse implements CardResponse {
  const factory _CardResponse({required final String citizenId, required final List<Card> cards}) = _$CardResponseImpl;

  factory _CardResponse.fromJson(Map<String, dynamic> json) = _$CardResponseImpl.fromJson;

  @override
  String get citizenId;
  @override
  List<Card> get cards;
  @override
  @JsonKey(ignore: true)
  _$$CardResponseImplCopyWith<_$CardResponseImpl> get copyWith => throw _privateConstructorUsedError;
}

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  String get cardName => throw _privateConstructorUsedError;
  String get cardHolderName => throw _privateConstructorUsedError;
  String get cardNumber => throw _privateConstructorUsedError;
  String get cardImageUrl => throw _privateConstructorUsedError;
  double get creditLimit => throw _privateConstructorUsedError;
  double get availableCredit => throw _privateConstructorUsedError;
  double get minPay => throw _privateConstructorUsedError;
  double get fullPay => throw _privateConstructorUsedError;
  String get statementDate => throw _privateConstructorUsedError;
  String get dueDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) = _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call({String cardName, String cardHolderName, String cardNumber, String cardImageUrl, double creditLimit, double availableCredit, double minPay, double fullPay, String statementDate, String dueDate});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardHolderName = null,
    Object? cardNumber = null,
    Object? cardImageUrl = null,
    Object? creditLimit = null,
    Object? availableCredit = null,
    Object? minPay = null,
    Object? fullPay = null,
    Object? statementDate = null,
    Object? dueDate = null,
  }) {
    return _then(_value.copyWith(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardImageUrl: null == cardImageUrl
          ? _value.cardImageUrl
          : cardImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      availableCredit: null == availableCredit
          ? _value.availableCredit
          : availableCredit // ignore: cast_nullable_to_non_nullable
              as double,
      minPay: null == minPay
          ? _value.minPay
          : minPay // ignore: cast_nullable_to_non_nullable
              as double,
      fullPay: null == fullPay
          ? _value.fullPay
          : fullPay // ignore: cast_nullable_to_non_nullable
              as double,
      statementDate: null == statementDate
          ? _value.statementDate
          : statementDate // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardImplCopyWith(_$CardImpl value, $Res Function(_$CardImpl) then) = __$$CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cardName, String cardHolderName, String cardNumber, String cardImageUrl, double creditLimit, double availableCredit, double minPay, double fullPay, String statementDate, String dueDate});
}

/// @nodoc
class __$$CardImplCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res, _$CardImpl> implements _$$CardImplCopyWith<$Res> {
  __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardHolderName = null,
    Object? cardNumber = null,
    Object? cardImageUrl = null,
    Object? creditLimit = null,
    Object? availableCredit = null,
    Object? minPay = null,
    Object? fullPay = null,
    Object? statementDate = null,
    Object? dueDate = null,
  }) {
    return _then(_$CardImpl(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardHolderName: null == cardHolderName
          ? _value.cardHolderName
          : cardHolderName // ignore: cast_nullable_to_non_nullable
              as String,
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardImageUrl: null == cardImageUrl
          ? _value.cardImageUrl
          : cardImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      creditLimit: null == creditLimit
          ? _value.creditLimit
          : creditLimit // ignore: cast_nullable_to_non_nullable
              as double,
      availableCredit: null == availableCredit
          ? _value.availableCredit
          : availableCredit // ignore: cast_nullable_to_non_nullable
              as double,
      minPay: null == minPay
          ? _value.minPay
          : minPay // ignore: cast_nullable_to_non_nullable
              as double,
      fullPay: null == fullPay
          ? _value.fullPay
          : fullPay // ignore: cast_nullable_to_non_nullable
              as double,
      statementDate: null == statementDate
          ? _value.statementDate
          : statementDate // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardImpl with DiagnosticableTreeMixin implements _Card {
  const _$CardImpl({required this.cardName, required this.cardHolderName, required this.cardNumber, required this.cardImageUrl, required this.creditLimit, required this.availableCredit, required this.minPay, required this.fullPay, required this.statementDate, required this.dueDate});

  factory _$CardImpl.fromJson(Map<String, dynamic> json) => _$$CardImplFromJson(json);

  @override
  final String cardName;
  @override
  final String cardHolderName;
  @override
  final String cardNumber;
  @override
  final String cardImageUrl;
  @override
  final double creditLimit;
  @override
  final double availableCredit;
  @override
  final double minPay;
  @override
  final double fullPay;
  @override
  final String statementDate;
  @override
  final String dueDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Card(cardName: $cardName, cardHolderName: $cardHolderName, cardNumber: $cardNumber, cardImageUrl: $cardImageUrl, creditLimit: $creditLimit, availableCredit: $availableCredit, minPay: $minPay, fullPay: $fullPay, statementDate: $statementDate, dueDate: $dueDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Card'))
      ..add(DiagnosticsProperty('cardName', cardName))
      ..add(DiagnosticsProperty('cardHolderName', cardHolderName))
      ..add(DiagnosticsProperty('cardNumber', cardNumber))
      ..add(DiagnosticsProperty('cardImageUrl', cardImageUrl))
      ..add(DiagnosticsProperty('creditLimit', creditLimit))
      ..add(DiagnosticsProperty('availableCredit', availableCredit))
      ..add(DiagnosticsProperty('minPay', minPay))
      ..add(DiagnosticsProperty('fullPay', fullPay))
      ..add(DiagnosticsProperty('statementDate', statementDate))
      ..add(DiagnosticsProperty('dueDate', dueDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImpl &&
            (identical(other.cardName, cardName) || other.cardName == cardName) &&
            (identical(other.cardHolderName, cardHolderName) || other.cardHolderName == cardHolderName) &&
            (identical(other.cardNumber, cardNumber) || other.cardNumber == cardNumber) &&
            (identical(other.cardImageUrl, cardImageUrl) || other.cardImageUrl == cardImageUrl) &&
            (identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit) &&
            (identical(other.availableCredit, availableCredit) || other.availableCredit == availableCredit) &&
            (identical(other.minPay, minPay) || other.minPay == minPay) &&
            (identical(other.fullPay, fullPay) || other.fullPay == fullPay) &&
            (identical(other.statementDate, statementDate) || other.statementDate == statementDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardName, cardHolderName, cardNumber, cardImageUrl, creditLimit, availableCredit, minPay, fullPay, statementDate, dueDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImplCopyWith<_$CardImpl> get copyWith => __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImplToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card({required final String cardName, required final String cardHolderName, required final String cardNumber, required final String cardImageUrl, required final double creditLimit, required final double availableCredit, required final double minPay, required final double fullPay, required final String statementDate, required final String dueDate}) = _$CardImpl;

  factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

  @override
  String get cardName;
  @override
  String get cardHolderName;
  @override
  String get cardNumber;
  @override
  String get cardImageUrl;
  @override
  double get creditLimit;
  @override
  double get availableCredit;
  @override
  double get minPay;
  @override
  double get fullPay;
  @override
  String get statementDate;
  @override
  String get dueDate;
  @override
  @JsonKey(ignore: true)
  _$$CardImplCopyWith<_$CardImpl> get copyWith => throw _privateConstructorUsedError;
}

Statement _$StatementFromJson(Map<String, dynamic> json) {
  return _Statement.fromJson(json);
}

/// @nodoc
mixin _$Statement {
  String get description => throw _privateConstructorUsedError;
  String get statementDate => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatementCopyWith<Statement> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatementCopyWith<$Res> {
  factory $StatementCopyWith(Statement value, $Res Function(Statement) then) = _$StatementCopyWithImpl<$Res, Statement>;
  @useResult
  $Res call({String description, String statementDate, double amount});
}

/// @nodoc
class _$StatementCopyWithImpl<$Res, $Val extends Statement> implements $StatementCopyWith<$Res> {
  _$StatementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? statementDate = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statementDate: null == statementDate
          ? _value.statementDate
          : statementDate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatementImplCopyWith<$Res> implements $StatementCopyWith<$Res> {
  factory _$$StatementImplCopyWith(_$StatementImpl value, $Res Function(_$StatementImpl) then) = __$$StatementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String statementDate, double amount});
}

/// @nodoc
class __$$StatementImplCopyWithImpl<$Res> extends _$StatementCopyWithImpl<$Res, _$StatementImpl> implements _$$StatementImplCopyWith<$Res> {
  __$$StatementImplCopyWithImpl(_$StatementImpl _value, $Res Function(_$StatementImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? statementDate = null,
    Object? amount = null,
  }) {
    return _then(_$StatementImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      statementDate: null == statementDate
          ? _value.statementDate
          : statementDate // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatementImpl with DiagnosticableTreeMixin implements _Statement {
  _$StatementImpl({required this.description, required this.statementDate, required this.amount});

  factory _$StatementImpl.fromJson(Map<String, dynamic> json) => _$$StatementImplFromJson(json);

  @override
  final String description;
  @override
  final String statementDate;
  @override
  final double amount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Statement(description: $description, statementDate: $statementDate, amount: $amount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Statement'))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('statementDate', statementDate))
      ..add(DiagnosticsProperty('amount', amount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$StatementImpl && (identical(other.description, description) || other.description == description) && (identical(other.statementDate, statementDate) || other.statementDate == statementDate) && (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, statementDate, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatementImplCopyWith<_$StatementImpl> get copyWith => __$$StatementImplCopyWithImpl<_$StatementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatementImplToJson(
      this,
    );
  }
}

abstract class _Statement implements Statement {
  factory _Statement({required final String description, required final String statementDate, required final double amount}) = _$StatementImpl;

  factory _Statement.fromJson(Map<String, dynamic> json) = _$StatementImpl.fromJson;

  @override
  String get description;
  @override
  String get statementDate;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$StatementImplCopyWith<_$StatementImpl> get copyWith => throw _privateConstructorUsedError;
}
