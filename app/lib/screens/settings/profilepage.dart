import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

   final List<Map<String, String>> data = [
    {"value": "85 Kg", "label": "Current Weight"},
    {"value": "1/3/04", "label": "DOB"},
    {"value": "Male", "label": "Gender"},
    {"value": "150 cm", "label": "Height"},
    {"value": "44", "label": "Weight"},
    {"value": "Eat Healthier", "label": "Goal"},
  ];

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("My Profile",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500
                ),)),
            ),
        
        
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14,top: 50),
                    child: SizedBox(
                      width: 360,
                      height: 200,
                      child: Card(
                        color: Colors.white,
                        elevation: 10,
                        child: Center(child: Text("John")),
                      ),
                    ),
                  ),
                    Center(
                      child: ClipOval(
                      child: Image.asset("assets/images/profilepic.png"),
                                    ),
                    ),
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Container(
              width: 350,
              height: 150,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey)
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data[index]["value"]!,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            data[index]["label"]!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 360,
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                children: [
        
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Meditation",),
                                  ),
        
                                  Padding(
                                    padding: const EdgeInsets.only(left: 180),
                                    child: Container(
                                      width: 50,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 71, 247, 27),
                                        borderRadius: BorderRadius.circular(28)
                                      ),
                                      child: Center(child: Text("0/5",style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
        
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 360,
                            child: Card(
                              color: Colors.white,
                              child: Row(
                                children: [
        
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Hydration Goal",),
                                  ),
        
                                  Padding(
                                    padding: const EdgeInsets.only(left: 150),
                                    child: Container(
                                      width: 50,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 20,168,252),
                                        borderRadius: BorderRadius.circular(28)
                                      ),
                                      child: Center(child: Text("2/8",style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
        
                                  Icon(Icons.arrow_right)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                    
                  ),
                ],
              ),
            )
        
          ],
        ),
      ),
    );
  }
}