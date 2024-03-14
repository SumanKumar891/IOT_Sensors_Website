import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CPSLabSetupPage(),
    );
  }
}

class CPSLabSetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
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
                            height: 55,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 216, 178), // Set the background color of the button
              ),
                            child: Text('Home',
                            style: TextStyle(
                              color: Colors.black
                            ),),
                            
                          
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cps_lab_hardware');
                            },
                            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 216, 178), // Set the background color of the button
              ),
                            child: Text('CPS Lab Hardwares',
                            style: TextStyle(
                              color: Colors.black
                            ),),
                            
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cpsLab');
                            },
                            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 216, 178), // Set the background color of the button
              ),
                            child: Text('CPS Lab Tutorial',
                            style: TextStyle(
                              color: Colors.black
                            ),),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/aboutUs');
                            },
                            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 247, 216, 178), // Set the background color of the button
              ),
                            child: Text('About Us',
                            style: TextStyle(
                              color: Colors.black
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          AppBar(
            title: Text(
              'CPS LAB HARDWARE SETUP',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 81, 34, 3),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/CPS_Lab_Hardware.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    padding: EdgeInsets.all(20.0),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: constraints.minWidth,
                        minHeight: constraints.maxHeight,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          HardwareDescriptionTile(
                            title: 'BLE Gateway',
                            description: 'The Bluetooth Gateway is a system architecture that allows communication between a central device and multiple Bluetooth nodes.',
                            imagePath: 'assets/images/BLE_Gateway-removebg-preview.png',
                          ),
                    HardwareDescriptionTile(
                      title: 'Low Power Camera Module',
                      description: 'CPS Camera Module involve a lot of image analytics. Low power camera module is equipped with Camera, and microcontroller.',
                      imagePath: 'assets/images/BLE_Development_Kit-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'BLE Development Kit',
                      description: 'It is a single-board development kit (DK) for Bluetooth Low Energy.',
                      imagePath: 'assets/images/BLE_Development_Kit__2_-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'BLE Node',
                      description: 'The BLE nodes are peripheral devices equipped with NRF52 SoC. ',
                      imagePath: 'assets/images/BLE_Node_PCB-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Solar Charging and Discharging Module',
                      description: 'This module is designed to learn how to charge and discharge the battery through Solar and calculation of battery time, monitor the battery etc.',
                      imagePath: 'assets/images/Solar_Charging_and_Discharging_Module-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: '4G/5G Kit with BLE',
                      description: 'The 4G/5G kit is equipped with 4G/5G module and a microcontroller. This board also supports the external flash memory and few sensors.',
                      imagePath: 'assets/images/4G_5G_kit.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Sensors/Weather monitoring system/Activity monitor System/Environment monitoring System',
                      description: 'Sensors come in the breakout boards. They have pins on them, which are used for supplying the power, providing ground, receiving inputs, and sending outputs.',
                      imagePath: 'assets/images/Weather_Monitoring_Sensor_System-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'UART to USB Converter',
                      description: 'An UART to USB converter is a type of protocol converter that is used for converting UART signal to USB data signals.',
                      imagePath: 'assets/images/UART_to_USB_Converter-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Grove Shield',
                      description: 'Grove shield is a modular, simple-to-use system designed to easily connect a BLE development kit to a wide range of “modules” such as sensors and motors.',
                      imagePath: 'assets/images/Grove_Shield_with_Sensors-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Power Profiler Kit',
                      description: 'It is important to optimize the power consumption of the CPS system. This system helps in measure the power consumption of the same. ',
                      imagePath: 'assets/images/Power_Profiler_Kit-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Relay Network Node',
                      description: 'A relay network node plays a critical role in communication systems by facilitating the transmission of data between different points within a network.',
                      imagePath: 'assets/images/relay_image-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Activity/Vibration Monitor Kit',
                      description: 'An activity monitor using Bluetooth Low Energy (BLE) is a wearable device or sensor that tracks and monitors various aspects of a users physical activity and health. ',
                      imagePath: 'assets/images/Activity_Monitor_Kit-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Solar Panel ',
                      description: 'A solar panel is a device that converts sunlight into electricity by using photovoltaic (PV) cells. PV cells are made of materials that generate electrons when exposed to light. ',
                      imagePath: 'assets/images/Solar_Panel-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Battery',

                      description: 'A LiPo (Lithium Polymer) battery, also known as Li-Po or LiPoly battery, is a type of rechargeable battery commonly used in consumer electronics, RC (remote control) vehicles, drones, and other applications where lightweight and high-energy-density power sources are required ',
                      imagePath: 'assets/images/Battery-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'SHT40 Sensor Board',
                      description: 'The sensor module is equipped with a SHT40 humidity and temperature output via an I2C interface. ',
                      imagePath: 'assets/images/SHT40_Sensor_Board-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'STTS751 Sensor Board',

                      description: 'The STTS751 is a digital temperature sensor which communicates over a 2-wire SMBus 2.0 compatible bus. ',
                      imagePath: 'assets/images/STTS751_Sensor_Board-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'LIS3DH Sensor Board',

                      description: 'The LIS3DH is an ultra-low-power high performance three-axis linear accelerometer belonging to the “nano” family, with digital I2C/SPI serial interface standard output. ',
                      imagePath: 'assets/images/LIS3DH_Sensor_Board-removebg-preview.png',
                    ),
                   
                    HardwareDescriptionTile(
                      title: 'LCD Display',

                      description: 'This lovely little 1.8 Inch SPI 128×160 TFT LCD Display Module with PCB for Arduino is the best way to add a small, colorful and bright display to any project. ',
                      imagePath: 'assets/images/LCD_Display-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'Buzzer Board',


                      description: 'An audio signaling device like a buzzer sensor has the main function of this is to convert the signal from audio to sound. ',
                      imagePath: 'assets/images/Buzzer_Board-removebg-preview.png',
                    ),
                    HardwareDescriptionTile(
                      title: 'W25Q16 Memory',

                      description: 'The W25Q16 (16M-bit), and W25Q32 (32M-bit) Serial Flash memories provide a storage solution for systems with limited space, pins and power. ',
                      imagePath: 'assets/images/W25Q16_Memory-removebg-preview.png',
                    ),
                     HardwareDescriptionTile(
                      title: 'Lux Sensor',

                      description: 'Lux Sensor is a high accuracy ambient light digital 16-bit resolution sensor in a miniature transparent 6.8 mm x 3.0 mm x 2.5 mm package. ',
                      imagePath: 'assets/images/Lux_Sensor.png',
                    ),
                     HardwareDescriptionTile(
                      title: 'Co2 Monitor Device',

                      description: 'CO2 sensor using the NRF52 series microcontroller offers a cost-effective and scalable solution for monitoring air quality in indoor environments, smart buildings, and IoT applications. ',
                      imagePath: 'assets/images/Co2_Monitor_Device-removebg-preview.png',
                    ),
                     HardwareDescriptionTile(
                      title: 'Acoustic Module Node',

                      description: 'An acoustic module sensor is a sophisticated device used to detect and analyze sound waves in various applications, ranging from industrial monitoring to environmental sensing and even in consumer electronics. ',
                      imagePath: 'assets/images/Acoustic_Module_Node-removebg-preview.png',
                    ),
                 ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class HardwareDescriptionTile extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const HardwareDescriptionTile({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 2.0,
      child: ExpansionTile(
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 40, 16, 1),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  description,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 5, 5, 5),
                  ),
                ),
                SizedBox(height: 16.0),
                Image.asset(
                  imagePath,
                  height: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}