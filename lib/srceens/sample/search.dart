import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searching extends StatefulWidget {
  const Searching({super.key});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  List<Map<String, dynamic>> allExpenses = [
    {"id": 1, "expense": "food1"},
    {"id": 2, "expense": "purchasing"},
    {"id": 3, "expense": "shopping"},
    {"id": 4, "expense": "carwash"},
    {"id": 5, "expense": "parlour"},
    {"id": 6, "expense": "travelling"},
    {"id": 7, "expense": "date"},
    {"id": 8, "expense": "cosmetics"},
    {"id": 9, "expense": "footwear"},
    {"id": 10, "expense": "dinner out"},
    {"id": 11, "expense": "vacation"}
  ];
  List<Map<String, dynamic>> _foundExpenses = [];

  @override
  void initState() {
    _foundExpenses = allExpenses;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = allExpenses;
    } else {
      results = allExpenses
          .where((expense) => expense["expense"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    
    setState(() {
      _foundExpenses = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Searching expenses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: "Search",
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _foundExpenses.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundExpenses[index]["id"]),
                  color: Color.fromARGB(255, 30, 88, 247),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundExpenses[index]["id"].toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    title: Text(
                      _foundExpenses[index]["expense"],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
