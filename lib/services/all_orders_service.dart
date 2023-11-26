import 'package:medicine_warehouse/helper/api.dart';

class AllOrdersService {
  Future<List<dynamic>> getAllOrders({required String token}) async {
    List<dynamic> data =
        await Api().get(url: 'put the get url here with token');

    return data;
  }
}
