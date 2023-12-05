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

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get citizenId => throw _privateConstructorUsedError;
  List<Card> get cards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) = _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String citizenId, List<Card> cards});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

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
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(_$UserImpl value, $Res Function(_$UserImpl) then) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String citizenId, List<Card> cards});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$UserImpl> implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? citizenId = null,
    Object? cards = null,
  }) {
    return _then(_$UserImpl(
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
class _$UserImpl with DiagnosticableTreeMixin implements _User {
  const _$UserImpl({required this.citizenId, required final List<Card> cards}) : _cards = cards;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) => _$$UserImplFromJson(json);

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
    return 'User(citizenId: $citizenId, cards: $cards)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('citizenId', citizenId))
      ..add(DiagnosticsProperty('cards', cards));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$UserImpl && (identical(other.citizenId, citizenId) || other.citizenId == citizenId) && const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, citizenId, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith => __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User({required final String citizenId, required final List<Card> cards}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String get citizenId;
  @override
  List<Card> get cards;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith => throw _privateConstructorUsedError;
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
