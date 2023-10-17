part of 'crypto_list_bloc.dart';

@immutable
abstract class CryptoListState extends Equatable {}

class CryptoListInitial extends CryptoListState {
  @override
  List<Object?> get props => [];
}

class CryptoListLoading extends CryptoListState{
  @override
  List<Object?> get props => [];
}

class CryptoListLoaded extends CryptoListState{
  CryptoListLoaded({required this.coinList});

  final List<CryptoCoin> coinList;

  @override
  List<Object?> get props => [coinList];
}


class CryptoListLoadingError extends CryptoListState{
  CryptoListLoadingError({required this.exception});
  
  final Object? exception;

  @override
  List<Object?> get props => [exception];
}
