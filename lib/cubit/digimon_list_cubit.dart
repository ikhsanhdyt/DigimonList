import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/model/digimon.dart';
import 'package:flutter_challenge/network/digimon_services.dart';

part 'digimon_list_state.dart';

class DigimonListCubit extends Cubit<DigimonListState> {
  DigimonListCubit() : super(DigimonListInitial());

  void fetchDigimonList() async {
    try {
      emit(DigimonListLoading());

      List<Digimon> digimon = await DigimonListServices().fetchDigimon();

      emit(DigimonListSuccess(digimon));
    } catch (e) {
      print("Debug-ProjecSelectorCubit-failed  = " + e.toString());
      emit(DigimonListError(e.toString()));
    }
  }
}
