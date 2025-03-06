import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RateApp extends StatefulWidget {
  int? stars;
  RateApp({super.key});

  @override
  State<RateApp> createState() => _RateAppState();
}

class _RateAppState extends State<RateApp> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 221,
        maxWidth: 328,
      ),
      child: Stack(
            children: [
              
              Center(
                child: Container(
                  width: 328,
                  height: 221,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                  ),
                  child: Card(
                    elevation: 0,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Text("Enjoying the app?",
                          style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400)),
                          SizedBox(height: 20,),
                          Text("Tap a star to rate it", 
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 6),
                            child: SizedBox(
                              width: 230,
                              height: 40,
                              child: ListView.builder(
                                itemCount: 5,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (content,index){
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        widget.stars=index;
                                      });
                                    },
                                    child: index<=(widget.stars ?? -1)?Image.asset("assets/icons/Star_enabled.png"):Image.asset("assets/icons/Star.png")),
                                );
                              }
                              ),
                            ),
                          )
                          /* Row(children: [
                            SizedBox(width: 40,),
                            Image.asset("assets/icons/Star.png"),
                            Image.asset("assets/icons/Star.png"),
                            Image.asset("assets/icons/Star.png"),
                            Image.asset("assets/icons/Star.png"),
                            Image.asset("assets/icons/Star.png"),
                          ],) */
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
    )
        ;
  }
}