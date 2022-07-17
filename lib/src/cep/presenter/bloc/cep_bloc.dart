import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_cep_usecase.dart';
import 'cep_event.dart';
import 'cep_state.dart';

class CepBloc extends Bloc<CepEvent, CepState> {
  final GetCepUsecase _cepUsecase;

  CepBloc(
    this._cepUsecase,
  ) : super(CepEmptyState());

  @override
  Stream<CepState> mapEventToState(CepEvent event) async* {
    yield CepLoadingState();

    switch (event.runtimeType) {
      case GetCepEvent:
        final result = await _cepUsecase.call(event.cep);
        yield result.fold(
          (l) => CepErrorState(l.message),
          (r) => CepSuccessState(r),
        );
        break;
      default:
    }
  }
}
