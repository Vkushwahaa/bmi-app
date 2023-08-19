import 'package:flutter/material.dart';

class bmiresult extends StatelessWidget {
  final double BMIVALUE;
  bmiresult({Key? key, required this.BMIVALUE}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textfield = TextEditingController();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR", style: TextStyle(fontSize: 20)),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(246, 0, 18, 90),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 44, 0, 89),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: textfield,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "mimimum",
                ),
                onChanged: (String) {
                  print("what are you doing $String");
                },
                onEditingComplete: () {
                  print('get lost${textfield.text}');
                },
              ),
              const Text(
                "YOUR BMI IS",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "$BMIVALUE",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w900),
              ),
            ]),
      ),
    ));
  }
}
