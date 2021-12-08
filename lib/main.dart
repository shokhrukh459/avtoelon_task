import 'package:avto_elon_task3/models/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(

          leading: Icon(Icons.menu, size: 28,),
          title: Text("Avtoelon", style: TextStyle(
            fontSize: 28,
          ),),
          actions: [

            Icon(Icons.add_circle_outline, size: 28, color: Colors.white54),
            SizedBox(width: 24,),
            Icon(Icons.monetization_on_outlined, size: 28, color: Colors.white54,),
            SizedBox(width: 24,),
            Icon(Icons.search,size: 28, color: Colors.white54),
            SizedBox(width: 16,),
          ],
        ),
            body: ListView.builder(
              itemCount: Order.orders.length,
              itemBuilder: (BuildContext context, int index){
               return Padding(
                 padding: const EdgeInsets.all(4.0),
                 child: InkWell(
                   onTap: ()=>{
                     Navigator.push(context, MaterialPageRoute(
                       builder: (context)=> SecondPage()
                     ) )
                   } ,
                   child: Card(
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Expanded(
                           flex: 1,
                             child: Image.asset(Order.orders[index].imageUrl) ),
                         Expanded(
                             flex: 1,
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(Order.orders[index].name,
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 20,
                                     ),),
                                   SizedBox(height: 10,),
                                   Text(Order.orders[index].info),
                                   SizedBox(height: 10,),
                                   Text(Order.orders[index].date,
                                   style: TextStyle(
                                     color: Colors.grey
                                   ),)
                                 ],
                               ),
                             ) )
                       ],
                     ),
                   ),
                 ),
               );
            },
            ),
      ),
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),

      ),
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/cobalt.jpg"),

          ],
        ),
      ),
    );
  }
}

