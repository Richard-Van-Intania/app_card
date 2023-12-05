import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'model.dart';

part 'provider.g.dart';

@riverpod
Future<User> user(UserRef ref) async {
  final response = await http.get(Uri.https('card-management-eajwtocuqa-as.a.run.app', '/v1/cards/1111111111111'));
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return User.fromJson(json);
}
