import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                height: 200,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 15, 84),
                    borderRadius: BorderRadius.circular(15)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50),
                padding: const EdgeInsets.only(left: 20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: Colors.green),
                  image: const DecorationImage(image: AssetImage(".jpg")),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
