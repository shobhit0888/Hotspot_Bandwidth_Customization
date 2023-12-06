// import 'package:flutter/material.dart';

// class Page2 extends StatefulWidget {
//   const Page2({super.key});

//   @override
//   State<Page2> createState() => _Page2State();
// }

// class _Page2State extends State<Page2> {
//   List<WifiInfo> wifiList = [];
//   var connectivity;

//   @override
//   void initState() {
//     super.initState();
//     _getWifiList();
//   }

//   void _getWifiList() async {
//     List<WifiInfoPlus> wifiListTemp = await WifiInfoPlus.getWifiInfoList();
//     setState(() {
//       wifiList = wifiListTemp;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView.builder(
//         itemCount: wifiList.length,
//         itemBuilder: (context, index) {
//           WifiInfoPlus wifiInfo = wifiList[index];
//           return ListTile(
//             leading: Icon(Icons.wifi),
//             title: Text(wifiInfo.ssid),
//             subtitle: Text(wifiInfo.bssid),
//           );
//         },
//       ),
//     );
//   }
// }