import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'imc_calculator_event.dart';
part 'imc_calculator_state.dart';

class ImcCalculatorBloc extends Bloc<ImcCalculatorEvent, ImcCalculatorState> {
  ImcCalculatorBloc()
      : super(const ImcCalculatorInitial(
          description: '',
          imc: '',
          image: 'images/balanca.png',
        )) {
    on<ImcCalculated>(_mapImcCalculatedToState);
    on<ImcCleaned>(_mapImcClearToState);
  }

  Future<void> _mapImcCalculatedToState(
    ImcCalculated event,
    Emitter<ImcCalculatorState> emit,
  ) async {
    var imc = event.weight / (event.height * event.height);

    if (imc < 18.5) {
      emit(ImcThinness(
        image: 'images/magreza.png',
        imc: imc.toStringAsFixed(2),
        description: 'Magreza',
      ));
      return;
    }
    if (imc < 24.9) {
      emit(ImcNormal(
        image: 'images/normal.png',
        imc: imc.toStringAsFixed(2),
        description: 'Normal',
      ));
      return;
    }
    if (imc < 29.9) {
      emit(ImcOverweight(
        image: 'images/sobrepeso.png',
        imc: imc.toStringAsFixed(2),
        description: 'Sobrepeso',
      ));
      return;
    }

    if (imc < 30.9) {
      emit(ImcObesity(
        image: 'images/obesidade.png',
        imc: imc.toStringAsFixed(2),
        description: 'Obesidade',
      ));
      return;
    }
    emit(ImcSeriousObesity(
      image: 'images/obesidade_seria.png',
      imc: imc.toStringAsFixed(2),
      description: 'Obesidade Grave',
    ));
  }

  Future<void> _mapImcClearToState(
    ImcCleaned event,
    Emitter<ImcCalculatorState> emit,
  ) async {
    emit(const ImcClear(image: 'images/balanca.png', imc: '', description: ''));
  }
}
