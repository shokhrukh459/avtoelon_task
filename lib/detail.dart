import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avto_elon_task3/models/order.dart';
import 'package:avto_elon_task3/detail.dart';
import 'package:avto_elon_task3/main.dart';

class DetailPage extends StatelessWidget {
  final Order data;

  const DetailPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
        actions: [
          Icon(Icons.share),
          SizedBox(
            width: 16,
          ),
          Icon(Icons.star_border),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              Image.asset(data.imageUrl),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    data.cost,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("y.e"),
                          Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "${data.name}, ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "${data.machinism}, ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "${data.year}, ",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 8,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "shahar",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(data.city),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Kuzov",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(data.type),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Uzatish qutisi",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(data.machinism),
                          ),
                        ],
                      ),



                      ///
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "rangi",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(data.color),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Uzatma",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(data.uzatma),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "dvigatel",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(data.capacity),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 8,
                color: Colors.grey.shade200,
              ),
              SizedBox(
                height: 16 ,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Optsiyalar va xarakteristkalar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(data.info)
                      ],
                    ),
                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
