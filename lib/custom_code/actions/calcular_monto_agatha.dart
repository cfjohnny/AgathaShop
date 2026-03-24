// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

double calcularMontoAgatha(
  double monto,
  String moneda,
  String plataforma,
) {
  // 🔹 Tipo de cambio
  double tipoCambio = 1;

  if (moneda == 'USD') {
    tipoCambio = 540;
  } else if (moneda == 'EUR') {
    tipoCambio = 580;
  } else if (moneda == 'CRC') {
    tipoCambio = 1;
  }

  // 🔹 Comisión por plataforma
  double comision = 1;

  if (plataforma == 'Shein') {
    comision = 1.10;
  } else if (plataforma == 'Amazon') {
    comision = 1.15;
  } else if (plataforma == 'Sephora') {
    comision = 1.12;
  } else if (plataforma == 'Temu') {
    comision = 1.08;
  } else {
    comision = 1.10; // default
  }

  // 🔹 Cálculo final
  double resultado = monto * tipoCambio * comision;

  return resultado;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
