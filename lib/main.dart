import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                icon: SvgPicture.asset('assets/menu.svg'),
              )
            ],
            backgroundColor: Color(0XFF506ED1).withOpacity(0.9)),
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
              Color(0XFF506ED1).withOpacity(0.9),
              Color(0xFF0F32E3).withOpacity(0.8),
            ])),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "London",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "United Kingdom",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Sat 6 Aug",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 100,
                        icon: SvgPicture.asset('assets/cloud5.svg'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '22 °',
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sunny',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Tomorrow",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text("Next 7 Days",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Colors.white10.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          decoratedbox(),
                          decoratedbox(),
                          decoratedbox(),
                          decoratedbox(),
                          decoratedbox(),

                        ],
                      ),
                    ),
                    height: 190,
                    width: double.infinity,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class decoratedbox extends StatelessWidget {
 final String days;
 final Icon icon;
 final String temperature;

 decoratedbox({this.days,this.icon,this.temperature});


  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
          color: Color(0xFF0F32E3).withOpacity(0.5),
        ),
        child: Container(

          height: 120,
          width: 50,
          child: Column(
            children: [
             Row(children: [
               Text(days,style: TextStyle(color: Colors.white),)
             ],),
              IconButton(icon: icon,),
             Text(temperature,)

            ],
          ),
        ));
  }
}

//Container(
//decoration: BoxDecoration(
//gradient: LinearGradient(
//begin: Alignment.topCenter,
//end: Alignment.bottomLeft,
//colors: [
//Color(0XFF506ED1).withOpacity(0.9),
//Color(0xFF0F32E3).withOpacity(0.8),
//
//])),
//child: Column(),
//
//);
