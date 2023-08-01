import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imc/feature/calculator_imc/widgets/custom_button.dart';
import 'package:imc/feature/calculator_imc/widgets/image_weight.dart';
import 'package:imc/feature/calculator_imc/widgets/info_stats.dart';
import 'package:imc/feature/calculator_imc/widgets/input.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'bloc/imc_calculator_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  final _form = GlobalKey<FormState>();

  @override
  void dispose() {
    _weightController.dispose();
    _heightController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ImcCalculatorBloc, ImcCalculatorState>(
      listener: (context, state) {
        if (state is ImcClear) {
          _weightController.clear();
          _heightController.clear();
        }
      },
      child: Scaffold(
        body: BlocBuilder<ImcCalculatorBloc, ImcCalculatorState>(
          builder: (context, state) {
            return Form(
              key: _form,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: 650,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      ImageWeight(size: 150, image: state.image),
                      const Spacer(),
                      InputText(
                        icon: MdiIcons.weightKilogram,
                        text: 'Peso(Kg)',
                        controller: _weightController,
                      ),
                      InputText(
                        icon: MdiIcons.humanMaleHeightVariant,
                        text: 'Altura(M)',
                        controller: _heightController,
                      ),
                      const Spacer(),
                      InfoStats(
                          iconImc: MdiIcons.scaleBathroom,
                          imcValue: state.imc,
                          descriptionIcon: MdiIcons.information,
                          descriptionValue: state.description),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            action: () {
                              if (_form.currentState!.validate()) {
                                context
                                    .read<ImcCalculatorBloc>()
                                    .add(ImcCalculated(
                                      weight:
                                          double.parse(_weightController.text),
                                      height:
                                          double.parse(_heightController.text),
                                    ));
                              }
                            },
                            icon: MdiIcons.check,
                            label: 'Calcular',
                          ),
                          CustomButton(
                            action: () {
                              context
                                  .read<ImcCalculatorBloc>()
                                  .add(const ImcCleaned());
                            },
                            icon: MdiIcons.notificationClearAll,
                            label: 'Limpar',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
