import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(icon:Icon(Icons.help_center_rounded, color: Colors.white,) ,onPressed: (){},) ,
        title: Text('Jtracker'),
        actions: [
          Row(
            children: [
              // Center(
              //   child: Center(
              //     child: Text('Tracker', 
              //     style: TextStyle(color: Colors.white, fontSize: 26),),
              //   ),
              // ),
              SizedBox(width: 10,),
              Icon(Icons.notification_add_rounded, color: Colors.white),

              SizedBox(width: 10,), 
              Icon(Icons.settings, color: Colors.white),
            ],
          )
      ]),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20,),
              CircleAvatar(
                backgroundImage: AssetImage('lib/assets/pet-shop.png'),
              ),
          
              Column(
                children: [
                  Text('Robert stfeyvd'),
          
                  SizedBox(height: 10,),
                  Row(
                    children: [
                  Icon(Icons.car_rental, color: Colors.blue,),
                  SizedBox(width: 10,),
                  Text('B2438rjufuhf | husgdbe', style: TextStyle(color: Colors.blue),)
                  ],
                  
                  ),
                ],
              ),
              
            ],
        ),
        Row(
          children: [
            SizedBox(height: 30,),
            Center(
              child: Text('Online | Battery: 90%'))
          ],
        ), 
         
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.flag),
                        Text('Map all devices'),
                    
                        Icon(Icons.web),
                        Text('Set Geoference'),
                    
                        Icon(Icons.smartphone_sharp),
                        Text('change number'),
                        
                        Icon(Icons.replay),
                        Text('restart device'),
                
                        Icon(Icons.power),
                        Text('Shutdown device'),            
                      ],
                    ),
                  Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.flag),
                    Text('Map all devices'),
                
                    Icon(Icons.web),
                    Text('Set Geoference'),
                
                    Icon(Icons.smartphone_sharp),
                    Text('change number'),
                    
                    Icon(Icons.replay),
                    Text('restart device'),

                    Icon(Icons.power),
                    Text('Shutdown device'),            
                  ],
                ),
                Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.flag),
                    Text('Map all devices'),
                
                    Icon(Icons.web),
                    Text('Set Geoference'),
                
                    Icon(Icons.smartphone_sharp),
                    Text('change number'),
                    
                    Icon(Icons.replay),
                    Text('restart device'),

                    Icon(Icons.power),
                    Text('Shutdown device'),            
                  ],
                ),
              
            
          ],
        )
              
            
          ],
        )
                  
                
                          ],
                        ),
              ],
            )
        
      ]),
    );
  }
}