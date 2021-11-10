import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:travelling_dong/models/destination_model.dart';
import 'package:travelling_dong/services/destination_service.dart';

part 'destionation_state.dart';

class DestionationCubit extends Cubit<DestionationState> {
  DestionationCubit() : super(DestionationInitial());

  // fungsi get data list destination
  void fetchDestinations() async {
    try {
      emit(DestionationLoading());

      List<DestinationModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestionationSuccess(destinations));
    } catch (e) {
      emit(DestionationFailed(e.toString()));
    }
  }
}
