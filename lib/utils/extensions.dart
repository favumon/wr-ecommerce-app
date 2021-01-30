import 'package:wr_ecommerce_app/constants/constants.dart';

extension CurrencyFormat on double {
  String toCurrency() {
    return '$currencySymbol $this';
  }
}
