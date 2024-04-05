import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){},),
        actions: [
          Icon(Icons.shopping_cart),

        SizedBox(width: 10,),
        Icon(Icons.notifications)
        ],
      ),
      body: Padding(
        
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Image.asset('lib/assets/download.jpg'),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('8.6'),
                ),
        
                Icon(Icons.favorite)
              ],
            ),
            Text('dnuegdnbuegfinuiwebfewfbuhfeufhenhrfefnieohreofeornfehfroereirerrre  ekfjeojfoef'),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber,),
                Text('5.0 (354)'),
                
                SizedBox(width: 20,),
                Text('|  540 Sale'),

                SizedBox(width: 20,),
                Icon(Icons.gps_not_fixed),
                Text('brooklyn'),

                Divider(),

                
              ],
            ),
            
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text('Variant', style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),

                Text('Size: Xs'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('Xs')),

                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('s')),
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('m')),
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('l')),
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('xl')),
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('xll'))
                  ],),
                
                
                Text('Color: Red'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('Xs')),

                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('s')),
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('m')),
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('l')),
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('xl')),
                    ElevatedButton(
                      onPressed:() {
                        
                      }, child: Text('xll'))
                  ],)
              ],
              
            )
          ],
        ),
        
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            ElevatedButton(onPressed:() {
              
            }, child: Icon(Icons.message)),
            ElevatedButton(onPressed:() {
              
            }, child: Text('Add to shopping cart'))
          ],
        )),
    );
  }
}