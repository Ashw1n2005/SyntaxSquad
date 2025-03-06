
import 'package:app/screens/datalog/waterlog.dart';
import 'package:app/widgets/rate_app.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> contents= ["Notifications","Settings","Contact Us","Feed Back","Rate Us","Favourite","Policy","Language","Sign Out"];
  List<Image> icons=[
    Image.asset("assets/icons/notification.png"),
    Image.asset("assets/icons/setting.png"),
    Image.asset("assets/icons/phone.png"),
    Image.asset("assets/icons/feed-back.png"),
    Image.asset("assets/icons/rating.png"),
    Image.asset("assets/icons/bookmark.png"),
    Image.asset("assets/icons/insurance.png"),
    Image.asset("assets/icons/world.png"),
    Image.asset("assets/icons/notification.png"),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 217, 216),
        elevation: 0,
      ),
      drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 243, 217, 216),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset("assets/images/ellipse_profile.png", width: 380, height: 215), 
                      Positioned(
                        top: 59,
                        left: 44,
                        child: ClipOval(
                          child: Image.asset("assets/images/profilepic.png", width: 80, height: 80, fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height-350,
                    child: ListView.builder(
                      itemCount: contents.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: icons[index],
                          title: Text(contents[index]),
                          trailing: Image.asset("assets/icons/next.png"),
                          onTap: () {
                            if(contents[index]=="Rate Us"){
                            showDialog(
                              context: context,
                              barrierDismissible: true, 
                              builder: (context) => Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: RateApp(), 
                              ),);
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height-40,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 113, 60, 93),
                    ),
              
                  ),
                  Container(
                    width: double.infinity,
                    height: 226,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 113, 60, 93),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Image.asset("assets/images/profilepic.png")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: [
                                  Text("Welcome back!",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),),
                                  Text("John",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),),],),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20,top: 40),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Image.asset("assets/icons/Homepage_notification.png")),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("Log your data",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 20
                            ),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 14,bottom: 20),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => WaterLogPage()),
                      );
                            }, child: Text("LOG",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black
                              ),
                            ))
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 217, 216),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Ongoing Video",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),
                        ),
                        Container(
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 113 , 60, 93),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text(
                              "Click here to continue the video",
                              style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                         SizedBox(
                          height: 10,
                        ), 
                        SizedBox(
                          width: double.maxFinite,
                          height: 120,
                          child: Card(
                            color: Colors.white,
                            child: Image.asset("assets/images/thumbnail.png",
                            width: double.maxFinite,
                            fit: BoxFit.fill,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text("Website",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 78,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 113 , 60, 93),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text(
                              "Click here to visit website !",
                              style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                         SizedBox(
                          height: 10,
                        ), 
                        SizedBox(
                          width: double.maxFinite,
                          height: 120,
                          child: Card(
                            color: Colors.white,
                            child: Image.asset("assets/images/background_website.jpg",
                            fit: BoxFit.fill,
                            width: double.infinity,),
                          ),
                        ),
                      ],
                    ),
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