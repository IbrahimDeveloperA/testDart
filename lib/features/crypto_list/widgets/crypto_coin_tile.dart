import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/repositories/crypto_coin/models/models.dart';

class CryptoCoinTitle extends StatelessWidget {
  const CryptoCoinTitle(
      {super.key, required this.coin,});

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageUrl,
      ),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "${coin.priceInUSD}",
        style: theme.textTheme.labelSmall,
      ),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin);
      },
    );
  }
}