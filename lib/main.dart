// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         // This is the theme of your application.
// //         //
// //         // TRY THIS: Try running your application with "flutter run". You'll see
// //         // the application has a blue toolbar. Then, without quitting the app,
// //         // try changing the seedColor in the colorScheme below to Colors.green
// //         // and then invoke "hot reload" (save your changes or press the "hot
// //         // reload" button in a Flutter-supported IDE, or press "r" if you used
// //         // the command line to start the app).
// //         //
// //         // Notice that the counter didn't reset back to zero; the application
// //         // state is not lost during the reload. To reset the state, use hot
// //         // restart instead.
// //         //
// //         // This works for code too, not just values: Most code changes can be
// //         // tested with just a hot reload.
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //         useMaterial3: true,
// //       ),
// //       home: const MyHomePage(title: 'Flutter Demo Home Page'),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});

// //   // This widget is the home page of your application. It is stateful, meaning
// //   // that it has a State object (defined below) that contains fields that affect
// //   // how it looks.

// //   // This class is the configuration for the state. It holds the values (in this
// //   // case the title) provided by the parent (in this case the App widget) and
// //   // used by the build method of the State. Fields in a Widget subclass are
// //   // always marked "final".

// //   final String title;

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       // This call to setState tells the Flutter framework that something has
// //       // changed in this State, which causes it to rerun the build method below
// //       // so that the display can reflect the updated values. If we changed
// //       // _counter without calling setState(), then the build method would not be
// //       // called again, and so nothing would appear to happen.
// //       _counter++;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     // This method is rerun every time setState is called, for instance as done
// //     // by the _incrementCounter method above.
// //     //
// //     // The Flutter framework has been optimized to make rerunning build methods
// //     // fast, so that you can just rebuild anything that needs updating rather
// //     // than having to individually change instances of widgets.
// //     return Scaffold(
// //       appBar: AppBar(
// //         // TRY THIS: Try changing the color here to a specific color (to
// //         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
// //         // change color while the other colors stay the same.
// //         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
// //         // Here we take the value from the MyHomePage object that was created by
// //         // the App.build method, and use it to set our appbar title.
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         // Center is a layout widget. It takes a single child and positions it
// //         // in the middle of the parent.
// //         child: Column(
// //           // Column is also a layout widget. It takes a list of children and
// //           // arranges them vertically. By default, it sizes itself to fit its
// //           // children horizontally, and tries to be as tall as its parent.
// //           //
// //           // Column has various properties to control how it sizes itself and
// //           // how it positions its children. Here we use mainAxisAlignment to
// //           // center the children vertically; the main axis here is the vertical
// //           // axis because Columns are vertical (the cross axis would be
// //           // horizontal).
// //           //
// //           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
// //           // action in the IDE, or press "p" in the console), to see the
// //           // wireframe for each widget.
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(
// //               'You have pushed the button this many times:',
// //             ),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }
// import 'package:android_flutter_wifi/android_flutter_wifi.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:hotspot/screens/home.dart';
// import 'package:provider/provider.dart';

// import 'helpers/connection.dart';

// void main() {
//   runApp(MultiProvider(
//       providers: [ChangeNotifierProvider(create: (_) => Connection())],
//       child: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }

// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   // static const platform = MethodChannel('softap_channel');
// //   String _platformVersion = 'Unknown';
// //   @override
// //   void initState() {
// //     super.initState();

// //     init();
// //   }

// //   void init() async {
// //     await AndroidFlutterWifi.init();
// //     var isConnected = await AndroidFlutterWifi.isConnected();
// //     await getDhcpInfo();
// //     await getWifiList();
// //     await getConfiguredNetworks();
// //     //await forgetWifi();
// //     debugPrint('Is connected: ${isConnected.toString()}');
// //   }

// //   getWifiList() async {
// //     List<WifiNetwork> wifiList = await AndroidFlutterWifi.getWifiScanResult();
// //     print(wifiList);
// //     if (wifiList.isNotEmpty) {
// //       WifiNetwork wifiNetwork = wifiList[0];
// //       print('Name: ${wifiNetwork.ssid}');
// //     }
// //   }

// //   isConnectionFast() {
// //     print(AndroidFlutterWifi.isConnectionFast());
// //   }

// //   getActiveWifiNetwork() async {
// //     ActiveWifiNetwork activeWifiNetwork =
// //         await AndroidFlutterWifi.getActiveWifiInfo();
// //   }

// //   getDhcpInfo() async {
// //     DhcpInfo dhcpInfo = await AndroidFlutterWifi.getDhcpInfo();
// //     String ipString = AndroidFlutterWifi.toIp(dhcpInfo.gateway!);
// //     String formedIp = AndroidFlutterWifi.getFormedIp(ipString);
// //     print('Gateway: ${ipString}');
// //     print('Formed ip: ${formedIp}');
// //   }

// //   void connectionTest() async {
// //     String ssid = 'TP-Link_F9D0';
// //     String password = ''; //Add you password
// //     if (ssid.isEmpty) {
// //       throw ("SSID can't be empty");
// //     }
// //     if (password.isEmpty) {
// //       throw ("Password can't be empty");
// //     }
// //     debugPrint('Ssid: $ssid, Password: $password');
// //     var result = await AndroidFlutterWifi.connectToNetwork(ssid, password);

// //     debugPrint('---------Connection result-----------: ${result.toString()}');
// //   }

// //   getConfiguredNetworks() async {
// //     List<ConfiguredNetwork> list =
// //         await AndroidFlutterWifi.getConfiguredNetworks();
// //     for (var element in list) {
// //       debugPrint('Network id: ${element.networkId}');
// //     }
// //   }

// //   ///Forget current connection
// //   forgetWifi() async {
// //     ActiveWifiNetwork activeWifiNetwork =
// //         await AndroidFlutterWifi.getActiveWifiInfo();
// //     var result =
// //         await AndroidFlutterWifi.forgetWifiWithSSID(activeWifiNetwork.ssid!);
// //     debugPrint('Forget wifi result: ${result.toString()}');
// //   }

// //   void connectToNetworkWithSSID() async {
// //     var result =
// //         await AndroidFlutterWifi.connectToNetworkWithSSID('Xartic_85AC9C_5G');
// //     debugPrint('Connection result: ${result.toString()}');
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         floatingActionButton: FloatingActionButton(onPressed: () {
// //           connectToNetworkWithSSID();
// //         }),
// //         appBar: AppBar(
// //           title: const Text('Plugin example app'),
// //         ),
// //         body: Center(
// //           child: Text('Running on: $_platformVersion\n'),
// //         ),
// //       ),
// //     );
// //   }

// //   // Future<void> _startSoftAP() async {
// //   //   try {
// //   //     await platform.invokeMethod('startSoftAP');
// //   //   } on PlatformException catch (e) {
// //   //     print("Failed to start Soft AP: ${e.message}");
// //   //   }
// //   // }
// // }
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotspot/screens/home.dart';
import 'package:hotspot/screens/page3.dart';
import 'package:provider/provider.dart';
import 'package:wifi_iot/wifi_iot.dart';
import 'dart:io' show Platform;

import 'attack.dart';
import 'helpers/connection.dart';

// void main() {
//   runApp(MultiProvider(
//       providers: [ChangeNotifierProvider(create: (_) => Connection())],
//       child: MyApp()));
// }

// runApp(MaterialApp(
//     darkTheme: ThemeData.dark(),
//     debugShowCheckedModeBanner: false,
//     home: home())
//     );

// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }
void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  _enablePlatformOverrideForDesktop();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0x9f4376f8),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// class FlutterWifiIoT extends StatefulWidget {
//   @override
//   _FlutterWifiIoTState createState() => _FlutterWifiIoTState();
// }

// class _FlutterWifiIoTState extends State<FlutterWifiIoT> {
//   @override
//   Widget build(BuildContext poContext) {
//     return Scaffold(body: getWidgets(poContext));
//   }

//   List<WifiNetwork> _htResultNetwork = [];
//   bool _isEnabled = false;
//   bool _isConnected = false;
//   String ssid = "";
//   @override
//   initState() {
//     getWifis();

//     super.initState();
//   }

//   getWifis() async {
//     _isEnabled = await WiFiForIoTPlugin.isEnabled();
//     _isConnected = await WiFiForIoTPlugin.isConnected();
//     _htResultNetwork = await loadWifiList();
//     setState(() {});
//     if (_isConnected) {
//       WiFiForIoTPlugin.getSSID().then((value) => setState(() {
//             ssid = value!;
//           }));
//     }
//   }

//   Future<List<APClient>> getClientList(
//       bool onlyReachables, int reachableTimeout) async {
//     List<APClient> htResultClient;
//     try {
//       htResultClient = await WiFiForIoTPlugin.getClientList(
//           onlyReachables, reachableTimeout);
//     } on PlatformException {
//       htResultClient = List<APClient>.empty();
//     }

//     return htResultClient;
//   }

//   Future<List<WifiNetwork>> loadWifiList() async {
//     List<WifiNetwork> htResultNetwork;
//     try {
//       htResultNetwork = await WiFiForIoTPlugin.loadWifiList();
//     } on PlatformException {
//       // ignore: deprecated_member_use
//       htResultNetwork = List<WifiNetwork>.empty();
//     }

//     return htResultNetwork;
//   }

//   isRegisteredWifiNetwork(String ssid) {
//     return ssid == this.ssid;
//   }

//   Widget getWidgets(context) {
//     WiFiForIoTPlugin.isConnected().then((val) => setState(() {
//           _isConnected = val;
//         }));

//     return SingleChildScrollView(
//       child: Column(
//         children: getButtonWidgetsForAndroid(context).cast<Widget>(),
//       ),
//     );
//   }

//   List getButtonWidgetsForAndroid(context) {
//     List<dynamic> htPrimaryWidgets = [];
//     WiFiForIoTPlugin.isEnabled().then((val) => setState(() {
//           _isEnabled = val;
//         }));
//     htPrimaryWidgets.addAll({
//       Container(
//         color: Colors.blue,
//         height: 350,
//         child: Center(
//           child: Text(
//             'Wifi BruteForce Tool',
//             style: TextStyle(color: Colors.black54, fontSize: 35),
//           ),
//         ),
//       ),
//       Container(
//         child: ListTile(
//             leading: Text('Wi-Fi'),
//             trailing: Switch(
//                 value: _isEnabled,
//                 onChanged: (v) {
//                   if (_isEnabled) {
//                     WiFiForIoTPlugin.setEnabled(false);
//                   } else {
//                     WiFiForIoTPlugin.setEnabled(true);
//                     getWifis();
//                   }
//                   setState(() {
//                     _isEnabled = !_isEnabled;
//                   });
//                 })),
//         color: _isEnabled ? Colors.green : Colors.red,
//       ),
//       SizedBox(height: 10),
//       Text(
//         'Wi-Fis Found',
//         style: TextStyle(fontSize: 25),
//         textAlign: TextAlign.center,
//       ),
//       IconButton(
//           icon: Icon(Icons.refresh),
//           onPressed: () {
//             getWifis();
//           }),
//       getList(context)
//     });
//     if (_isEnabled) {
//       WiFiForIoTPlugin.isConnected().then((val) {
//         if (val != null) {
//           setState(() {
//             _isConnected = val;
//           });
//         }
//       });
//     }

//     return htPrimaryWidgets;
//   }

//   getList(contex) {
//     return ListView.builder(
//       itemBuilder: (builder, i) {
//         var network = _htResultNetwork[i];
//         var isConnctedWifi = false;
//         if (_isConnected)
//           isConnctedWifi = isRegisteredWifiNetwork(network.ssid!);

//         if (_htResultNetwork.length > 0) {
//           return Container(
//             color: isConnctedWifi ? Colors.blueAccent : Colors.transparent,
//             child: ListTile(
//                 title: Text(network.ssid!),
//                 trailing: !isConnctedWifi
//                     ? ElevatedButton(
//                         onPressed: () {
//                           Navigator.of(contex).push(MaterialPageRoute(
//                               builder: (_) => Attack(
//                                     wifiNetwork: network,
//                                   )));
//                         },
//                         child: Text('Attack'),
//                       )
//                     : SizedBox()),
//           );
//         } else
//           return Center(
//             child: Text('No wifi found'),
//           );
//       },
//       itemCount: _htResultNetwork.length,
//       shrinkWrap: true,
//     );
//   }
// }

// class PopupCommand {
//   String command;
//   String argument;

//   PopupCommand(this.command, this.argument);
// }
