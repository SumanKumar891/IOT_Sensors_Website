import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'weather_data.dart';
import 'co2_sensor.dart';
import 'CPS_Lab.dart';
import 'LED_Experiment.dart';
import 'lis3dh_experiment.dart';
import 'ContactUS.dart';
import 'SHT40_Experiment.dart';
import 'stts751.dart';
import 'Relay.dart';
import 'button_exp.dart';
import 'CPS_lab_hardware.dart';
import 'about_us.dart';
import 'sensor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(),
        '/weather': (context) => WeatherData(),
        '/co2Sensor': (context) => Co2Sensor(),
        '/cpsLab': (context) => CPSlab(),
        '/LED_exp': (context) => LEDexperiment(),
        '/Button_exp': (context) => ButtonExp(),
        '/SHT40_Experiment': (context) => SHT40_Experiment(),
        '/STTS751_exp': (context) => STTS751(),
        '/lis3dh': (context) => LIS3DH(),
        '/ContactUS': (context) => Contact(),
        '/Relay_exp': (context) => RelayExp(),
        '/cps_lab_hardware': (context) => CPSLabSetupPage(),
        '/aboutUs': (context) => AboutUsPage(),
        '/sensors': (context) => Sensorspage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CarouselSliderController carouselController = CarouselSliderController();
  bool showSensorCards = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('./../assets/assets/images/back_front_new.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 90, left: 165, right: 165),
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'assets/images/awadhlogo.png',
                              height: 65,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/home');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 247, 216, 178),
                              ),
                              child: Text(
                                'Home',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, '/cps_lab_hardware');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 247, 216, 178),
                              ),
                              child: Text(
                                'CPS Lab Hardwares',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/cpsLab');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 247, 216, 178),
                              ),
                              child: Text(
                                'CPS Lab Tutorial',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/aboutUs');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 247, 216, 178),
                              ),
                              child: Text(
                                'About Us',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      'Agriculture & Water Technology Development Hub (AWaDH)',
                      style: TextStyle(
                        fontFamily: 'FontMain',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(height: 20),
                    CarouselSlider(
                      carouselController: carouselController,
                      options: CarouselOptions(
                        height: 400,
                        aspectRatio: 16 / 9,
                        autoPlay: false,
                        enlargeCenterPage: true,
                      ),
                      items: [
                        'front_foto-removebg-preview.png',
                        'Awadh_logo_New-removebg-preview.png',
                        'New_deployment_pic-removebg-preview.png',
                        'Iot_logo_Picture_final-removebg-preview.png',
                        'home_page_1.png',
                        'home_page_2.png',
                        'home_page_3.png',
                        'home_page_4.png',
                      ].map(
                        (image) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      './../assets/assets/images/$image',
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ).toList(),
                    ),
                    Container(
                      margin:
                          EdgeInsets.only(bottom: 170, left: 165, right: 165),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/sensors');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  child: Text(
                                    'SENSORS',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(width: 100),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/ContactUS');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  child: Text(
                                    'CONTACT US',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardWithImage(
    BuildContext context,
    String buttonText,
    String imagePath,
    Function() onPressed,
  ) {
    return InkWell(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipOval(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: onPressed,
                child: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
