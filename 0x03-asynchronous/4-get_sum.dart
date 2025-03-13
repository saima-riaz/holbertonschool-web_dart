import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    var userData = await fetchUserData();
    var userId = jsonDecode(userData)['id'];

    var ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);

    double total = 0;
    for (var product in orders) {
      var priceData = await fetchProductPrice(product);
      total += jsonDecode(priceData);
    }

    return total;
  } catch (e) {
    return -1;
  }
}
