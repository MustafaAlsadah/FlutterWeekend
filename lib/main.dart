import 'package:flutter/material.dart';
import 'package:untitled/MatchCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900],
                         scaffoldBackgroundColor: Color(0xFF830542),
                         fontFamily: "Qatar2022"
        ),
        home: Scaffold(
          appBar: PreferredSize(
            preferredSize:  Size.fromHeight(100.0),
            child: AppBar(
              toolbarHeight: 100.0,
              centerTitle: true,
              backgroundColor: Color(0xFF03CFB8),
              leading: SizedBox(
                child: Image.asset("assets/world-cup-2022-logo-1.png"),
              ),
              title: Padding(
                padding: const EdgeInsets.symmetric(),
                child: Row(
                  children: [Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Column(
                        children: [
                          Row(
                            children: [Column(
                              children: [Image.asset("assets/argentina1.png"), Text("ARG")],
                            ),
                              Text("X"),
                              Column(
                                children: [Image.asset("assets/saudi-arabia1.png"), Text("KSA")],
                              )],
                          ),
                          Text("2 days",
                          style: TextStyle(color: Color(0xFFB8FFF7)),
                          )
                        ],
                      )
                    ],
                  ),Text("Doha 29 C")],
                ),


              )
            ),
          ),
          
          body: SingleChildScrollView(
            child: Column(
              children: [ 
                Container(
                  child: Container(
                      child: Image.asset("assets/discoverFanZones.png"),
                      margin: EdgeInsets.all(20.0),
                  ),
                  margin: EdgeInsets.only(bottom: 30.0),
                ),
                SizedBox(
                  height: 190.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      useMatchCard(firstTeam: ("Saudi Arabia"), secondTeam: "Argentina", stadium: "Lusail", kickoffTime: "7:00 PM"),
                      useMatchCard(firstTeam: ("Qatar"), secondTeam: "Ecuador", stadium: "Albayt", kickoffTime: "7:00 PM"),
                      useMatchCard(firstTeam: ("Qatar"), secondTeam: "Ecuador", stadium: "Albayt", kickoffTime: "7:00 PM"),
                      useMatchCard(firstTeam: ("Saudi Arabia"), secondTeam: "Argentina", stadium: "Lusail", kickoffTime: "7:00 PM"),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 25.0),
                  child: SizedBox(
                    height: 200,
                    child: Container(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Image.asset("assets/fanVillages.png"),
                          Image.asset("assets/countDown.png"),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        )
    );
  }
}

