import 'package:bmi_calculator/screens/bmiresult.dart';
import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

calcBMI({required double height, required double weight}) {
  height = height / 100;
  double bmivalue = weight / (height * height);
  return bmivalue;
}

class _firstpageState extends State<firstpage> {
  double slidervalue = 100;
  double newweight = 5.0;
  int age = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 44, 0, 89),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(255, 44, 0, 89),
                    ),
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.male_outlined,
                          size: 100,
                          color: Colors.tealAccent,
                        ),
                        Text(
                          "MALE",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 44, 0, 89),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.female_outlined,
                      size: 100,
                      color: Colors.limeAccent,
                    ),
                    Text(
                      "FEMALE",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(255, 44, 0, 89),
            ),
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width * 0.87,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("height",
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                Text(
                  slidervalue.toString().substring(0, 5),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 50),
                ),
                const TextField(),
                Slider(
                    min: 100,
                    max: 250,
                    value: slidervalue,
                    onChanged: (value) {
                      slidervalue = value;
                      setState(() {});
                    }),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color.fromARGB(255, 44, 0, 89),
                      ),
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "WEIGHT",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Text(
                            newweight.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 50),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromARGB(133, 163, 142, 142),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    newweight--;
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    newweight++;
                                    setState(() {});
                                  },
                                  icon: const Icon(Icons.add,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 44, 0, 89),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "AGE",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      Text(
                        age.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w900),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(133, 166, 148, 148),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                age--;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              double finalBMI = calcBMI(height: slidervalue, weight: newweight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => bmiresult(BMIVALUE: finalBMI)));
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: const Color.fromARGB(255, 44, 0, 89),
              ),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.87,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("CALCULATE BMI",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
