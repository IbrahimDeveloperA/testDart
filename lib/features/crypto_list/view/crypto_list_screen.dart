import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled/features/crypto_list/bloc/crypto_list_bloc.dart';
import '../../../repositories/crypto_coin/crypro_coins.dart';
import '../widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  final _cryptoListBloc = CryptoListBloc(GetIt.I<AbstractCoinsRepository>());

  @override
  void initState() {
    _cryptoListBloc.add(LoadCryptoList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CryptoCurrenciesList"),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            final completer = Completer();
            _cryptoListBloc.add(LoadCryptoList(completer: completer));
            return completer.future;
          },
          child: BlocBuilder<CryptoListBloc, CryptoListState>(
            bloc: _cryptoListBloc,
            builder: (context, state) {
              if (state is CryptoListLoaded) {
                return ListView.separated(
                  padding: const EdgeInsets.only(top: 16),
                  itemCount: state.coinList.length,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, i) {
                    final coin = state.coinList[i];
                    return CryptoCoinTitle(coin: coin);
                  },
                );
              }
              if (state is CryptoListLoadingError) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Ошибка!",),
                      const SizedBox(height: 10),
                      const Text('Проверьте подключение к интернету', style: TextStyle(fontSize: 16),),
                      const SizedBox(height: 30,),
                      TextButton(
                          onPressed: () {
                            _cryptoListBloc.add(LoadCryptoList());
                          },
                          child: const Text("Try again"))
                    ],
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}
