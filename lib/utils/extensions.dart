import 'package:wr_ecommerce_app/constants/constants.dart';

const ext = 0;

extension CurrencyFormat on double {
  String toCurrency() {
    return '$currencySymbol $this';
  }
}
