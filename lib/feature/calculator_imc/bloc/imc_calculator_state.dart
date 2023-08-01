// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'imc_calculator_bloc.dart';

sealed class ImcCalculatorState extends Equatable {
  const ImcCalculatorState({
    required this.imc,
    required this.description,
    required this.image,
  });

  final String imc;
  final String description;
  final String image;

  @override
  List<Object> get props => [imc, description, image];
}

final class ImcCalculatorInitial extends ImcCalculatorState {
  const ImcCalculatorInitial({
    required super.image,
    required super.imc,
    required super.description,
  });
}

final class ImcThinness extends ImcCalculatorState {
  const ImcThinness({
    required super.image,
    required super.imc,
    required super.description,
  });
}

final class ImcNormal extends ImcCalculatorState {
  const ImcNormal({
    required super.image,
    required super.imc,
    required super.description,
  });
}

final class ImcOverweight extends ImcCalculatorState {
  const ImcOverweight({
    required super.image,
    required super.imc,
    required super.description,
  });
}

final class ImcObesity extends ImcCalculatorState {
  const ImcObesity({
    required super.image,
    required super.imc,
    required super.description,
  });
}

final class ImcSeriousObesity extends ImcCalculatorState {
  const ImcSeriousObesity({
    required super.image,
    required super.imc,
    required super.description,
  });
}

final class ImcClear extends ImcCalculatorState {
  const ImcClear({
    required super.image,
    required super.imc,
    required super.description,
  });
}
