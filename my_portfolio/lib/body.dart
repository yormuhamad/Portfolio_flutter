import 'package:flutter/material.dart';
import 'package:my_portfolio/my_page.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
       padding: const EdgeInsets.only(top: 35, left: 35, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
           Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> 
                [Text("Маълумотнома",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Дар бораи ман",
                style: TextStyle(fontSize: 30),
                ),
                 Text("Соҳаи барномасозӣ",
                style: TextStyle(fontSize: 30),
                ),
                ],
            ),
           ),
           Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Image.asset(
                  "images/my_foto.jpg",
                  width: 250,
                  height: 250,
                  //fit: BoxFit.fill,
                  )),
              ],
            ),
           ),
           Column(
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Оё шумо супер ҳастед? Ба Лигаи барномасозон ҳамроҳ шавед ва имкониятҳои кориро дар саросари ҷаҳон ба даст оред!",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                  ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => const MyPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Идома",
                          style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                      ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                   Text("Аллакай узвият дорам! "),
                   Text("Инҷо ворид шавед", style: TextStyle(
                    color: Colors.yellow[900],
                    fontWeight: FontWeight.bold
                   ),)
                
                  ],
                ),
              ),
            ],
           ),
          ],
        ),
      ),
    );
  }
}