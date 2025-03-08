import 'package:flutter/material.dart'; // Importing Flutter's material design package

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // Hiding debug banner
      home: SafeArea( // Ensuring content is displayed within safe bounds of the screen
        child: Scaffold(
          backgroundColor: Colors.teal[300], // Setting background color
          appBar: AppBar(
            backgroundColor: Colors.pink, // Setting app bar background color
            title: Column(
              children: [
                Text("Muhammad Afaq", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)), // Displaying name
                Text("2022-ag-8772", style: TextStyle(fontSize: 16)), // Displaying registration number
              ],
            ),
            centerTitle: true, // Centering the title
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(color: Colors.pink), // Setting drawer header color
                  child: Center(child: Text("MENU", style: TextStyle(color: Colors.white, fontSize: 24))), // Displaying menu title
                ),
              ],
            ),
          ),
          body: SingleChildScrollView( // Allowing scrolling
            child: Padding(
              padding: EdgeInsets.all(8.0), // Adding padding
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distributing columns evenly
                    children: [
                      Container(
                        color: Colors.red,
                        child: Column(
                          children: [
                            buildBox("S1 3.43", Colors.black, Colors.white),
                            buildBox("S2 3.2", Colors.white, Colors.black),
                            buildBox("S3 3.0", Colors.black, Colors.white),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.pink,
                        child: Column(
                          children: [
                            buildBox("BS IT", Colors.purple, Colors.white),
                            buildBox("Evening", Colors.teal, Colors.white),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.green,
                        child: Column(
                          children: [
                            buildBox("S4 2.9", Colors.black, Colors.white),
                            buildBox("S5 3.56", Colors.white, Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10), // Adding space
                  buildHeader("my idea"), // Section header
                  SizedBox(height: 10), // Adding space
                  Row(
                    children: [
                      Expanded(child: Container(color: Colors.brown, height: 400)),
                      Expanded(child: Container(color: Colors.green, height: 400)),
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          height: 400,
                          child: Center(
                            child: Text(
                              "Afaq",
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),


                      Expanded(child: Container(color: Colors.brown, height: 400)),
                      Expanded(child: Container(color: Colors.green, height: 400)),
                    ],
                  ),
                  SizedBox(height: 10), // Adding space
                  buildHeader("UK", backgroundColor: Colors.purple), // Section header
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

// Function to create a styled box
Widget buildBox(String text, Color bgColor, Color textColor) {
  return Container(
    width: 100,
    height: 50,
    margin: EdgeInsets.all(4), // Adding margin
    decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8)), // Styling the box
    child: Center(
      child: Text(text, textAlign: TextAlign.center, style: TextStyle(color: textColor, fontSize: 14, fontWeight: FontWeight.bold)),
    ),
  );
}

// Function to create a section header
Widget buildHeader(String text, {Color backgroundColor = Colors.pink}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10), // Adding padding
    decoration: BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(8)), // Styling the header
    child: Center(
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
    ),
  );
}
