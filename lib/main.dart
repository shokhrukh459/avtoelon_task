import 'package:avto_elon_task3/models/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
          ),
          title: Text("Avtoelon"),
          actions: [
            Icon(Icons.add_circle_outline),
            SizedBox(width: 16,),
            Icon(Icons.monetization_on_outlined),
            SizedBox(width: 16,),
            Icon(Icons.search),
            SizedBox(width: 16),
          ],
        ),
        body: ListView.builder(
            itemCount: Order.orders.length,
            itemBuilder: (BuildContext context, int index){
              return InkWell(
                onTap: () => {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DetailPage(data: Order.orders[index],)
                  )
                  )
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Image.asset(Order.orders[index].imageUrl)),
                      Expanded(
                          flex: 4,
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Order.orders[index].name, style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                            ),),
                            Row(
                              children: [
                                Text("${Order.orders[index].year}y, "),
                                Text("${Order.orders[index].type}, "),
                                Text("${Order.orders[index].capacity}, "),
                                Text("${Order.orders[index].machinism}, "),
                              ],
                                       ),
                            Text(Order.orders[index].petrol),
                            SizedBox(height: 4,),
                            Row(
                              children: [
                                Text("${Order.orders[index].city} ", style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                Text("${Order.orders[index].date} ", style: TextStyle(
                                  color: Colors.grey,
                                ),),
                              ],
                            )

                          ],
                        ),
                      ))
                    ],
                  ),

                ),
              );
            }),
      ) ,
    );
  }
}
