import 'package:bmi/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI',
      home: SplashScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var wtController = TextEditingController();
  var ftControllar = TextEditingController();
  var inControllar = TextEditingController();
  var bgColor = Colors.indigo.shade200;

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your BMI'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
                ),
                TextField(
                  controller: wtController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Enter Your Weight (in Kg)'),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                ),
                TextField(
                  controller: ftControllar,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Enter Your Height (in Feet)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                ),
                TextField(
                  controller: inControllar,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Enter Your Height (in inches)'),
                    prefixIcon: Icon(Icons.height),
                  ),
                ),
                SizedBox(height: 11),
                ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftControllar.text.toString();
                    var inch = inControllar.text.toString();

                    if (wt != "" && ft != "" && inch != "") {
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);

                      var tInch = (iFt * 12) + iInch;

                      var tCm = tInch * 2.54;
                      var tM = tCm / 100;
                      var bmi = iWt / (tM * tM);

                      var msg = '';

                      if (bmi > 25) {
                        msg = 'You are Over Weight!!';
                        bgColor = Colors.orange.shade200;
                      } else if (bmi < 18) {
                        msg = 'You are Under Weight!!';
                        bgColor = Colors.red.shade200;
                      } else {
                        msg = 'You are Healthy!!';
                        bgColor = Colors.green.shade200;
                      }

                      result = "$msg\n BMI is: ${bmi.toStringAsFixed(2)}";
                      setState(() {});
                    } else {
                      setState(() {
                        result = 'Please fill all the required blanks!!';
                      });
                    }
                  },
                  child: Text('Calculate'),
                ),
                SizedBox(height: 11),
                Text(result, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
