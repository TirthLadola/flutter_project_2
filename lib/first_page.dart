import 'package:flutter/material.dart';
import 'package:flutter_project_2/second_page.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(left: 58),
                          child: Text(
                            "5",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Rubik'),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 15, 60, 0),
                                child: Text(
                                  "Exercizes",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 100, 15),
                                child: Text(
                                  "left",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 60),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.flag, color: Colors.redAccent),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Finish Workout",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset('images/workout.jpg'),
                  Container(
                    color: Colors.deepPurple.withOpacity(0.6),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(30, 50, 30, 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Straight",
                                    style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 35,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "squat",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontFamily: 'Rubik',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 1,
                                    height: 50,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "15",
                                        style: TextStyle(
                                            fontFamily: 'Rubik',
                                            fontSize: 35,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        "Times",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Rubik',
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 130,
                          ),
                          Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Next",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "French Press",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Rubik',
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset(
                                      'images/workout1.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 120,
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return second();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Compleate",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      fontFamily: 'Rubik',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
