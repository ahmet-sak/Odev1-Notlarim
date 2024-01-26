import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:widget_detail/constants/colors.dart';

void main() {
  runApp(const Test());
}

class WidgetDetail extends StatelessWidget {
  const WidgetDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ilk Uygulama'),
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: const Text('Menu Icon'),
        ),
        body: const Center(
          child: Text('Hello Flutter!'),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, //ActionButton "onPressed" fonksiyonu olmadan çalışmaz.
          child: const Text('+'),
        ),
      ),
    );
  }
}


//StatefulWidget yardımı ile dinamik verilerle çalışma şansı yakalarız
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  Random random = Random();
  int value = 0;
  String tekCift= "Tek";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$value $tekCift sayi",
              style: TextStyle(
                color: HexColor(primaryColor),
                backgroundColor: HexColor(secondaryColor),
                fontSize: 45,
                fontWeight: FontWeight.w700,
              ),),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      value= random.nextInt(10);
                      if(value%2==0){
                        tekCift = "Çift";
                      }else{
                        tekCift = "Tek";
                      }
                    });
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor(primaryColor),
                  ),
                  child: Text("Tıkla",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: HexColor(thirdColor),
                  ),))
            ],
          ),
        ),
      ),
    );
  }
}
