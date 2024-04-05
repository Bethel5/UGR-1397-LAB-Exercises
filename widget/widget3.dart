import 'package:flutter/material.dart';

class Widget3 extends StatelessWidget {
  const Widget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_forward),onPressed: (){},),
        title: Text('Order Details')
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          
          Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Icons.check, color: Colors.green,),
                  ],
                ),
              ),
              Text('Completed', style: TextStyle(color: Colors.green),),
              SizedBox(height: 10,),
              Icon(Icons.arrow_back),
              Text('order completed on 24 july,2034'),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Order Id                                    #36746584'),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Order Date                                    20 july 2024, 05:00pm'),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Text('Purchased Items'),
                    SizedBox(height: 10,),

                    Row(
                      children: [
                        Image.asset('lib/assets/download (1).jpg',
                        height: 100,
                        width: 100,),
                        Column(
                          children: [
                            Text('Black tshirt'),

                            SizedBox(height: 10,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Size: L'),
                                SizedBox(width: 14,),
                                Text('Color: Yellow')
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('price: 50.00'),
                                SizedBox(width: 14,),
                                Text('Qty: 1')
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Image.asset('lib/assets/images.jpg',
                        height: 100,
                        width: 100,),
                        Column(
                          children: [
                            Text('Hoodie Rose'),

                            SizedBox(height: 10,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Size: L'),
                                SizedBox(width: 14,),
                                Text('Color: Yellow')
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('price: 50.00'),
                                SizedBox(width: 14,),
                                Text('Qty: 1')
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text('Shipping Information'),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            Text('phone no'),
                            SizedBox(width: 14,),
                            Text('(105) 899574358'),

                          ],
                        ),
                        Row(
                          children: [
                            Text('Address'),
                            SizedBox(width: 14,),
                            Text('Jaciornf nuhdde'),

                          ],
                        ),
                        Row(
                          children: [
                            Text('Shipment'),
                            SizedBox(width: 14,),
                            Text('Jaciornf nuhdde'),

                          ],
                        ),
                        Column(
                          children: [
                            Text('Payment info'),
                            Row(
                              children: [
                                Text('Payment method'),

                                Text('Cash on delevery')
                              ],
                            )
                          ],
                        )
                      ],
                    )  
                  ],
                ),
              )
            ],
          ),
          
        ],
      ),
    );
  }
}
