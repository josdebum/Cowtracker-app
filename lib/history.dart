import 'package:flutter/material.dart';

import 'cow_details.dart';



class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  List<Cow> persons = [

    Cow(id: '1578', long : '4.53', lat : " 5.43", temp: "35.5 C", hum: "54 %"),

  ];


  Widget personDetailCard(Cow) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[

              SizedBox(width: 10),
              Column(

          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipOval(
                child: Image.asset('images/cow_head.jpg',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 6),
             Text(Cow.id,
            style: TextStyle (
                color: Colors.red,
                fontSize: 14
            ),)


            ]

              ),
              SizedBox(width: 40),



                  Text("Within Fence",
                    style: TextStyle (
                        color: Colors.black,
                        fontSize: 16
                    ),
                  ),
                  SizedBox(width: 90),

                  Column(
                    children: <Widget>[
                    Text(Cow.temp,
                      style: TextStyle (
                          color: Colors.black54,
                          fontSize: 14
                      ),
                    ),
                      SizedBox(height: 10),
                    Text(Cow.hum,
                      style: TextStyle (
                          color: Colors.black54,
                          fontSize: 14
                      ),
                    )
                    ],
                  )


            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Cattle Dashboard"),
        actions: [
          Icon(Icons.search,  size: 30),

        ],


      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: <Widget>[

            Column(
                children: persons.map((p) {

                  return personDetailCard(p);
                }).toList()
            )
          ],
        ),
      ),
    );
  }
}


