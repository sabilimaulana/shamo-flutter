import 'package:flutter/material.dart';
import 'package:shamo/models/cart_model.dart';
import 'package:shamo/services/transactions_service.dart';

class TransactionProvider with ChangeNotifier {
  Future<bool> checkout(
    String token,
    List<CartModel> carts,
    double totalPrice,
  ) async {
    try {
      return await TransactionService().checkout(token, carts, totalPrice);
    } catch (e) {
      return false;
    }
  }
}
