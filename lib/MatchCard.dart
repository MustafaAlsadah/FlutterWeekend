
import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final String firstTeam;
  final String secondTeam;
  final String stadium;
  final String kickoffTime;

  const MatchCard({
    super.key,
    required this.firstTeam,
    required this.secondTeam,
    required this.kickoffTime,
    required this.stadium
});

  @override
  Widget build(BuildContext context){
    String firstTeamImgPath="emptyFlag";//TODO
    String secondTeamImgPath="emptyFlag";//TODO
    String stadiumImgPath="";//TODO

    switch(this.firstTeam){
      case "Saudi Arabia":
        firstTeamImgPath="assets/saudi-arabia1.png";
        break;
      case "Argentina":
        firstTeamImgPath="assets/argentina1.png";
        break;
      case "Qatar":
        firstTeamImgPath="assets/qatar.png";
        break;
      case "Ecuador":
        firstTeamImgPath="assets/ecuador.png";
        break;
    }

    switch(this.secondTeam){
      case "Saudi Arabia":
        secondTeamImgPath="assets/saudi-arabia1.png";
        break;
      case "Argentina":
        secondTeamImgPath="assets/argentina1.png";
        break;
      case "Qatar":
        secondTeamImgPath="assets/qatar.png";
        break;
      case "Ecuador":
        secondTeamImgPath="assets/ecuador.png";
        break;
    }

    switch(this.stadium){
      case "Lusail":
        stadiumImgPath="assets/lusail-transparent 2.png";
        break;
      case "Albayt":
        stadiumImgPath="assets/al-bayt-transparent 1.png";
        break;
    }

    return Container(
      child: Column(
        children: [
          Center(
              child: Container(
                child: Container(
                  child: Row(
                    children: [Column(
                      children: [Image.asset(firstTeamImgPath), Text("$firstTeam",
                          style: TextStyle(color: Colors.white))],
                    ),
                      Column(children: [Text("X",
                          style: TextStyle(color: Colors.white))]),
                      Column(
                        children: [Image.asset(secondTeamImgPath), Text("$secondTeam",
                            style: TextStyle(color: Colors.white))],
                      )],
                  ),
                  margin: EdgeInsets.only(top: 30.0),
                ),
                height: 100,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                  color: Color(0xFF75053B),

                ),
              )
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: [
                    Text("$kickoffTime",
                        style: TextStyle(color: Colors.white)
                    ),Image.asset(stadiumImgPath),
                    Text("$stadium",
                        style: TextStyle(color: Colors.white)
                    )
                  ],
                ),
              decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
                color: Color(0xFF630030),
              ),
              height: 50,
              width: 170,
            ),
          )
        ],
      )
    );
  }

}

class useMatchCard extends StatelessWidget {
  final String firstTeam;
  final String secondTeam;
  final String stadium;
  final String kickoffTime;

  const useMatchCard({super.key, required this.firstTeam, required this.secondTeam, required this.stadium, required this.kickoffTime});

  @override
  Widget build(BuildContext context){
    return MatchCard(
      firstTeam: firstTeam,
      secondTeam: secondTeam,
      stadium: stadium,
      kickoffTime: kickoffTime,
    );
  }
}