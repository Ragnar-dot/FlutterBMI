import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/BMI.gif"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Personal BMI Calculator",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 200, 149, 247),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                
                
                 // Add some space between the text and the button
                ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(Color.fromARGB(255, 250, 203, 150)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/weight');
                },
                child: const Text('Enter your Data'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.center,  
              child: Icon(Icons.home, color: Color.fromARGB(255, 250, 195, 159), size: 30),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.center,
              child: Icon(Icons.line_weight, color:Color.fromARGB(255, 250, 195, 159), size: 30),
            ),
            label: 'Weight',
          ),
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.center,
              child: Icon(Icons.height, color: Color.fromARGB(255, 250, 195, 159), size: 30),
            ),
            label: 'Height',
          ),
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.center,
              child: Icon(CupertinoIcons.rectangle_stack_person_crop_fill, color: Color.fromARGB(255, 250, 195, 159), size: 30),
            ),
            label: 'Result',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/');
              break;
            case 1:
              Navigator.pushNamed(context, '/weight');
              break;
            case 2:
              Navigator.pushNamed(context, '/height');
              break;
            case 3:
              Navigator.pushNamed(context, '/result');
              break;
          }
        },
      ),
    );
  
  }
}

    

