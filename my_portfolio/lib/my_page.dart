import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageBody(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget> [
         Icon(
          Icons.share,
          color: Colors.grey,
         ),
         SizedBox(
          width: 10,
          ),
          Icon(
          Icons.settings,
          color: Colors.grey,
         ),
         SizedBox(
          width: 10,
          ),
        ],
      ),
// bottomNavigationBar: 
// BottomNavigationBar(
//   type:  BottomNavigationBarType.fixed, 
//   items: [
// BottomNavigationBarItem(icon: Icon(Icons.search), title: Text(".data")),
// BottomNavigationBarItem(icon: Icon(Icons.search), title: Text(".data")),

// ]),

    );
  }
}

class PageBody extends StatefulWidget {

  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
          child: Row(
            children: <Widget>  [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.asset("images/my_foto.jpg",
                width: 130,
                height: 130,),
              ),
          
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                 Text("Ёрмуҳаммад Одинаев",
                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                 ),
                 SizedBox(height: 10,),
                 Text("Таҳиягари Frontend",
                 style: TextStyle(color: Colors.grey,
                 fontSize: 15),
                 ),
                 SizedBox(height: 10,),
                 Container(
                  decoration: 
                  BoxDecoration(color: Colors.orange.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text("Барномасозӣ",
                      style: TextStyle(color: Colors.orange[900])),
                    ),
                  ),
                 ),
                ],
              ),
            ),
            
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 13, bottom: 20),
          child: Container(
            child: Text("Таҷрибаи 6-солаи ман дар соҳаи барномасозӣ. Ман якчанд забонҳои барномасозиро аз худ кардам. Айни ҳол дар Литсейи президентӣ барои хонандагони болаеқати Ҷумҳурии Тоҷикистон ба ҳайси Муҳандис барномасоз кор мекунам. ",
            style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: <Widget> [
              Text(
                "Забонҳои барномасозӣ",
                style: TextStyle(
                  color: Colors.blue[700], fontWeight: FontWeight.bold),
          
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 1,
                    width: 23git init0,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
        ),
        Container(
        
          child: GridView.count(
            //scrollDirection: Axis.horizontal,
            crossAxisCount: 3,
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            children:<Widget>[
                list(
                  icon: "images/html-5.png",
                ),
                 list(
                  icon: "images/css-3.png",
                ),
                 list(
                  icon: "images/c-.png",
                ),
                list(
                  icon: "images/c-sharp.png",
                ),
                 list(
                  icon: "images/js-file.png",
                ),
                 list(
                  icon: "images/sql-server.png",
                ),
            ],),
        ),
      ],
    );
  }
}

class list extends StatelessWidget {
  const list({
    super.key, required this.icon,
  });
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Stack(
        children: <Widget>[
          Image.asset("images/pentagon.png",
          fit: BoxFit.cover,
          height: 100,
          width: 100,
          ),
          Positioned(
            top: 20,
            left: 18,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(icon,
              height: 55,
              width: 55,
              ),
            ))
          ],
      ),
    );
  }
}
