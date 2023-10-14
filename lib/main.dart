import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'crypto_coins_list_app.dart';
import 'repositories/crypto_coin/crypro_coins.dart';

void main() {
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(() => CryptoCoinRepository(dio: Dio()));
  runApp(CryptoCurrenciesApp());
}
