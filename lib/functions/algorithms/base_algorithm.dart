import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smartest_calculator/blocs/bloc.dart';
import 'package:smartest_calculator/ui/input_fields.dart';
import 'package:smartest_calculator/utils/formatting/output_formatting.dart';
import 'package:smartest_calculator/utils/input.dart';
import 'package:smartest_calculator/utils/output_display.dart';

abstract class Algorithm {
  String get title;

  ColorSwatch get color;

  String get generalDescription;

  String get functionDescription;

  OutputFormatting get outputFormatting;

  Input get previousInput;

  List<Field> get fields;

  Bloc<OutputDisplay> get bloc;

  bool selected = false;

  void computeFunction(Input input);
}
