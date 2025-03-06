import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AwardPage extends StatefulWidget {
  const AwardPage({super.key});

  @override
  State<AwardPage> createState() => _AwardPageState();
}

class _AwardPageState extends State<AwardPage> {
  final List<Image> images=[
    Image.asset("assets/images/Bronze Medal.png"),
    Image.asset("assets/images/Silver Medal.png"),
  Image.asset("assets/images/Gold Medal.png"),
  Image.asset("assets/images/Platinum Award.png")];

  final List<String> title= ["Bronze Medal", "Silver Medal", "Gold Medal", "Platinum Medal"];
  final List<String> para=[
    "Stay hydrated (1.5L), eat balanced meals, and sleep 6+ hours for 7 days to earn this badge",
    "Stay hydrated (1.5L), eat balanced meals, and sleep 6+ hours for 7 days to earn this badge",
    "Maintain water, food, and 7-8 hours of sleep for 30 days to earn gold",
    "Balance water, nutrition, and 8 hours of sleep for 60 days to reach the top",
    ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
            itemCount: images.length,
            itemBuilder: (context,index){
            return SizedBox(
              height: 228,
              child: Card(
                color: Color.fromARGB(255, 243, 217, 216),
                child: Column(
                  children: [
                    Row(children: [
                      images[index],
                      SizedBox(width: 20,),
                      Text(title[index],
                      style: GoogleFonts.pottaOne(
                        textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                      )),
                    ],),
                    
                      Text(para[index],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),),
                  ],
                ),
              ),
            );
            }
        ),
    );
  }
}

