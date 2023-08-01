// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'imc_calculator_bloc.dart';

sealed class ImcCalculatorEvent extends Equatable {
  const ImcCalculatorEvent();

  @override
  List<Object> get props => [];
}

final class ImcCalculated extends ImcCalculatorEvent {
  const ImcCalculated({
    required this.weight,
    required this.height,
  });

  final double weight;
  final double height;

  @override
  List<Object> get props => [weight, height];
}

final class ImcCleaned extends ImcCalculatorEvent {
  const ImcCleaned();

  @override
  List<Object> get props => [];
}
