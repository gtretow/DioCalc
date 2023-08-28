import 'dart:io';
import 'package:projeto_calc_imc/classes/pessoa.dart';

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}

String classificarIMC(double imc) {
  if (imc < 18.5) {
    return "Abaixo do peso";
  } else if (imc < 24.9) {
    return "Peso normal";
  } else if (imc < 29.9) {
    return "Sobrepeso";
  } else if (imc < 34.9) {
    return "Obesidade grau 1";
  } else if (imc < 39.9) {
    return "Obesidade grau 2";
  } else {
    return "Obesidade grau 3";
  }
}

void main() {
  print("Calculadora de IMC");

  try {
    stdout.write("Informe seu nome: ");

    String nome = stdin.readLineSync()!;

    stdout.write("Informe seu peso (em kg): ");
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write("Informe sua altura (em metros): ");
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);

    double imc = calcularIMC(pessoa.peso, pessoa.altura);
    print("${pessoa.nome}, seu IMC é: $imc");

    var classificacao = classificarIMC(imc);
    print(classificacao);
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
