import 'package:projeto_calc_imc/projeto_calc_imc.dart';
import 'package:test/test.dart';

void main() {
  group('Calculadora de IMC', () {
    test('Teste de cálculo do IMC', () {
      double imc = calcularIMC(65, 1.70);
      expect(imc, closeTo(22.49, 0.01));
    });

    test('Teste de classificação do IMC (Abaixo do peso)', () {
      String classificacao = classificarIMC(16.0);
      expect(classificacao, 'Abaixo do peso');
    });

    test('Teste de classificação do IMC (Sobrepeso)', () {
      String classificacao = classificarIMC(28.5);
      expect(classificacao, 'Sobrepeso');
    });
  });
}
