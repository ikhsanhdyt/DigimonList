part of 'digimon_list_cubit.dart';

abstract class DigimonListState extends Equatable {
  const DigimonListState();

  @override
  List<Object> get props => [];
}

class DigimonListInitial extends DigimonListState {}

class DigimonListLoading extends DigimonListState {}

class DigimonListSuccess extends DigimonListState {
  final List<Digimon> digimon;

  DigimonListSuccess(this.digimon);

  @override
  List<Object> get props => [];
}

class DigimonListError extends DigimonListState {
  final String error;

  DigimonListError(this.error);

  @override
  List<Object> get props => [];
}
