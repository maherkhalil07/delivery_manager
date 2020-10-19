import 'package:delivery_manager/widgets/order_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.05),
                    child: Text(
                      'Delivery Manager',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    elevation: 5,
                    margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05)
                        .add(EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.04)),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          'No orders yest',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                        children: [
                          OrderItem(
                            price: 50,
                            deliveryMan: 'Ahmed Khalil',
                            time: '2:00PM',
                          ),
                          OrderItem(
                            price: 100,
                            deliveryMan: 'Ahmed Khalil',
                            time: '3:00PM',
                          ),
                          OrderItem(
                            price: 200,
                            deliveryMan: 'Ahmed Khalil',
                            time: '4:00PM',
                          ),
                          OrderItem(
                            price: 200,
                            deliveryMan: 'Ahmed Khalil',
                            time: '4:00PM',
                          ),
                          OrderItem(
                            price: 200,
                            deliveryMan: 'Ahmed Khalil',
                            time: '4:00PM',
                          ),
                          OrderItem(
                            price: 200,
                            deliveryMan: 'Ahmed Khalil',
                            time: '4:00PM',
                          ),
                          OrderItem(
                            price: 200,
                            deliveryMan: 'Ahmed Khalil',
                            time: '4:00PM',
                          ),
                          OrderItem(
                            price: 200,
                            deliveryMan: 'Ahmed Khalil',
                            time: '4:00PM',
                          ),
                          OrderItem(
                            price: 200,
                            deliveryMan: 'Ahmed Khalil',
                            time: '4:00PM',
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
