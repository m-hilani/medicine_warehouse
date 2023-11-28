import 'package:flutter/material.dart';
import 'package:medicine_warehouse/widgets/customOrder.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});
  static String id = "MyOrdersPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
          child:
              // FutureBuilder(
              //     //future: AllOrdersService().getAllOrders(),
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //  List<String> orders = snapshot.data!;
              //return
              Expanded(
            child: ListView.builder(
                //  itemCount: orders.length,

                itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                child: CustomOrder(
                    //  order: orders[index],
                    ),
              );
            }),
          ) //;
          //  }else {
          //   return Center(child: CircularProgressIndicator());
          //}
          //  }
          //),
          ),
    );
  }
}
