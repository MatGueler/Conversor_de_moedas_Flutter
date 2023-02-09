import 'package:conversor_moeda/app/Controller/home_controller.dart';
import 'package:conversor_moeda/app/Model/currency_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText: toText, fromText: fromText);

  test('Converte real para dolar com ponto', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('Converte real para dolar com virgula', () {
    toText.text = '2,0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('Converte dolar para real com ponto', () {
    toText.text = '1.0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dolar', real: 5.65, dolar: 1, euro: 0.85, bitcoin: .000086);
    homeController.fromCurrency = CurrencyModel(
        name: 'Real', real: 1, dolar: .18, euro: .15, bitcoin: .000016);
    homeController.convert();
    expect(fromText.text, '5.65');
  });

  test('Converte dolar para real com virgula', () {
    toText.text = '1,0';
    homeController.toCurrency = CurrencyModel(
        name: 'Dolar', real: 5.65, dolar: 1, euro: 0.85, bitcoin: .000086);
    homeController.fromCurrency = CurrencyModel(
        name: 'Real', real: 1, dolar: .18, euro: .15, bitcoin: .000016);
    homeController.convert();
    expect(fromText.text, '5.65');
  });
}
