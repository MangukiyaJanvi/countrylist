import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List f1 = [
    "🇮🇳",
    "🇵🇰 ",
    "🇦🇲 ",
    "🇦🇺",
    "🇦🇷 ",
    "🇦🇹",
    "🇦🇿",
    "🇧🇸 ",
    "🇧🇭 ",
    "🇧🇩",
    "🇧🇧",
    "🇧🇾 ",
    "🇧🇪 ",
    "🇧🇿 ",
    "🇦🇱 ",
    "🇩🇿",
    "🇦🇩 ",
    "🇦🇴 ",
    "🇨🇦 ",
    "🇨🇳"
  ];
  List l1 = [
    "India",
    "Pakistan",
    "Armenia",
    "Australia",
    "Argentina",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Canada",
    "China"
  ];
  List c1 = [
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
    Colors.blueAccent,
  ];
  List cap = [
    "New Delhi",
    "Islamabad",
    "Yerevan",
    "Canberra",
    "Buenos Aires",
    "Vienna",
    "Baku",
    "Nassau",
    "Manama",
    "Dhaka",
    "Bridgetown",
    "Minsk",
    "Brussels",
    "Belmopan",
    "Tirana",
    "Algiers",
    "Andorra la Vella",
    "Luanda",
    "Ottawa",
    "Beijing"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Country List"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: l1
                .asMap()
                .entries
                .map((e) =>
                    SampleUi(l1[e.key], c1[e.key], cap[e.key], f1[e.key]))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget SampleUi(String Name, Color c1, String cap, String f1) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: c1, width: 2),
        color: Colors.lightBlue.shade50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "$f1",
            style: TextStyle(fontSize: 35),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$Name ",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: c1),
              ),
              Text(
                "[ $cap ]",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: c1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
