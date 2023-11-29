//Yasar Mushtaq
//flutter
//Qr Generator

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_generator/ui/styke/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.primaryColor,
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: QrImageView(
                  data: data,
                  backgroundColor: Colors.white,
                  size: 200.0,
                ),
              ),
              SizedBox(
                height: 120.0,
              ),
              Container(
                width: 300.0,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      data = value;
                    });
                  },
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Type the data",
                    filled: true,
                    fillColor: AppStyle.textInputColor,
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              RawMaterialButton(
                onPressed: () {},
                fillColor: AppStyle.accentColor,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(
                  horizontal: 36.0,
                  vertical: 16.0,
                ),
                child: Text(
                  "Generate Qr Code",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
