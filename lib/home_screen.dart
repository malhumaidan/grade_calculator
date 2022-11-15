import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grade Calculator"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  prefixIcon: Icon(
                    Icons.percent,
                    color: Colors.blue,
                  )),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              calculateGrade(int.parse(myController.text));
            },
            child: Text("calculate"),
          )
        ],
      ),
    );
  }
}

void calculateGrade(int grade) {
  if (grade >= 90) {
    print("A");
  } else if (grade >= 80) {
    print("B");
  } else if (grade >= 70) {
    print("C");
  } else if (grade >= 60) {
    print("D");
  } else if (grade < 60) {
    print("F");
  }
}
