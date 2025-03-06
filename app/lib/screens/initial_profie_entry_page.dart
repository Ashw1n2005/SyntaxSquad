import 'package:app/screens/dashboard.dart';
import 'package:app/widgets/next_button.dart';
import 'package:flutter/material.dart';

class InitialProfieEntryPage extends StatefulWidget {
  const InitialProfieEntryPage({super.key});

  @override
  State<InitialProfieEntryPage> createState() => _InitialProfieEntryPageState();
}

class _InitialProfieEntryPageState extends State<InitialProfieEntryPage> {
  final TextEditingController _dateController = TextEditingController();
  final List<String> genderOptions = ["Male", "Female", "Other"];
  String? selectedGender;


 Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 217, 216),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          
              Text("What should we call you",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
          
              SizedBox(
                height: 48,
                width: 338,
                child: TextField(
                        expands: true,  
                        maxLines: null, 
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "First Name",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide.none
                          ), 
                        ),
                      ),
              ),
          
              Text("When is your birthday",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
                    
                
               SizedBox(
                height: 48,
                width: 338,
                child: TextField(
                        expands: true,  
                        maxLines: null, 
                        controller: _dateController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          hintText: "dd/mm/yyyy",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide.none
                          ), 
                        ),
                        readOnly: true,
                        onTap: () => _selectDate(context),
                      ),
              ),
                
              Text("Enter your gender",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
             
              SizedBox(
                  height: 48,
                  width: 338,
                  child: DropdownButtonFormField<String>(
                    value: selectedGender,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Select Gender",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    items: ["Male", "Female", "Other"]
                        .map((gender) => DropdownMenuItem(
                              value: gender,
                              child: Text(gender),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value!;
                      });
                    },
                  ),
                ),
              
          
                Text("Phone number",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
                
                SizedBox(
                height: 48,
                width: 338,
                child: TextField(
                        expands: true,  
                        maxLines: null, 
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintStyle: TextStyle(color: Colors.grey),
                          filled: true,
                          hintText: "Enter here",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: BorderSide.none
                          ), 
                        ),
                      ),
              ),
                
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Height",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
                  
                      SizedBox(
                        height: 48,
                        width: 106,
                        child: TextField(
                                expands: true,  
                                maxLines: null, 
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey),
                                  hintText: "in cms",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(28),
                                    borderSide: BorderSide.none
                                  ), 
                                ),
                              ),
                      ),
                  
                    ],
                  ),
                  Column(
                    children: [
                      Text("Weight",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
                  
                    SizedBox(
                        height: 48,
                        width: 106,
                        child: TextField(
                                expands: true,  
                                maxLines: null, 
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.grey),
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText: "in kgs",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(28),
                                    borderSide: BorderSide.none
                                  ), 
                                ),
                              ),
                      ),
                    ],
                  )
                ],
              ),
                
          
                
          
                Text("What is your main health goal",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
                
                SizedBox(
                    height: 48,
                    width: 338,
                    child: TextField(
                            expands: true,  
                            maxLines: null, 
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "ie..improve sleep quality,fitness",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide: BorderSide.none
                              ), 
                            ),
                          ),
                  ),
          
                Text("Would you like to recieve daily health tips",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                    ),),
                
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 106,
                      height: 48,
                      child: ElevatedButton(onPressed: (){
                      
                      }, 
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                      child: Center(child: Text("Yes",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                      ),),)),
                    ),
                
                    SizedBox(
                      width: 106,
                      height: 48,
                      child: ElevatedButton(onPressed: (){
                      
                      }, 
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                      child: Center(child: Text("No",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                      ),),)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260,top: 8),
                  child: NextButton(page: Dashboard(),),
                ),
            ],
          ),
        ),
      ),
    );
  }
}