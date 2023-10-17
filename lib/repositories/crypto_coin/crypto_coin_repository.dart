import 'package:dio/dio.dart';
import 'package:untitled/repositories/crypto_coin/crypro_coins.dart';

class CryptoCoinRepository implements AbstractCoinsRepository {
  CryptoCoinRepository({required this.dio});
  final Dio dio;

  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SOL,AID,CAG,DOV,LTC,BOND,BETA,WING,TWT,DOGE,FORTH,TRX,MLN,LINK,BICO,CAKE,LQTY,POND&tsyms=USD');

    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final price = usdData['PRICE'];
      final imageUrl = usdData['IMAGEURL'];
      return CryptoCoin(
          name: e.key,
          priceInUSD: price,
          imageUrl: 'https://www.cryptocompare.com/$imageUrl'
      );
    }).toList();
    return cryptoCoinsList;
  }
}

//    final cryptoCoinsList = data.entries.map((e) => CryptoCoin(
//           name: e.key,
//           priceInUSD: (e.value as Map<String, dynamic>)['USD'],
//         )).toList();
