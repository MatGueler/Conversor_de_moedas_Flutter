class CurrencyModel {
  final String name;
  final double dolar;
  final double real;
  final double euro;
  final double bitcoin;

  CurrencyModel(
      {required this.name,
      required this.dolar,
      required this.real,
      required this.euro,
      required this.bitcoin});

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1, dolar: .19, euro: .18, bitcoin: .0000086),
      CurrencyModel(
          name: 'Dolar', real: 5.27, dolar: 1, euro: .93, bitcoin: .000045),
      CurrencyModel(
          name: 'Euro', real: 5.66, dolar: 1.07, euro: 1, bitcoin: .000049),
      CurrencyModel(
          name: 'Bitcoin',
          real: 116075.14,
          dolar: 22015.2,
          euro: 20501.66,
          bitcoin: 1),
    ];
  }
}
