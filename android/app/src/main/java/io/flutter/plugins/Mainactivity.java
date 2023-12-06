// package io.flutter.plugins;

// import android.content.Context;
// import android.net.wifi.SoftApCallback;
// import android.net.wifi.WifiManager;
// import android.os.Handler;
// import android.os.Looper;
// import android.util.Log;
// import io.flutter.embedding.android.FlutterActivity;
// import io.flutter.embedding.engine.FlutterEngine;
// import io.flutter.plugins.GeneratedPluginRegistrant;
// import io.flutter.plugin.common.MethodCall;
// import io.flutter.plugin.common.MethodChannel;
// import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
// import io.flutter.plugin.common.MethodChannel.Result;

// public class MainActivity extends FlutterActivity {
//     private static final String TAG = "MainActivity";

//     @Override
//     public void configureFlutterEngine(FlutterEngine flutterEngine) {
//         GeneratedPluginRegistrant.registerWith(flutterEngine);

//         // Register method channel
//         new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), "softap_channel")
//                 .setMethodCallHandler(new SoftApMethodHandler(this));
//     }

//     // SoftApMethodHandler class to handle method calls
//     private static class SoftApMethodHandler implements MethodCallHandler {
//         private final Context context;

//         SoftApMethodHandler(Context context) {
//             this.context = context;
//         }

//         @Override
//         public void onMethodCall(MethodCall call, Result result) {
//             if (call.method.equals("startSoftAP")) {
//                 startSoftAP();
//                 result.success(null);
//             } else {
//                 result.notImplemented();
//             }
//         }

//         private void startSoftAP() {
//             WifiManager wifiManager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
//             if (wifiManager != null && wifiManager.isWifiApSupported()) {
//                 SoftApCallback softApCallback = new SoftApCallback() {
//                     @Override
//                     public void onCapabilityChanged(SoftApCapability capability) {
//                         super.onCapabilityChanged(capability);
//                         Log.d(TAG, "Soft AP capabilities changed: " + capability.toString());
//                         // Handle capability changes
//                     }
//                 };

//                 wifiManager.registerSoftApCallback(new Handler(Looper.getMainLooper()), softApCallback);

//                 wifiManager.startLocalOnlyHotspot(new WifiManager.LocalOnlyHotspotCallback() {
//                     @Override
//                     public void onStarted(WifiManager.LocalOnlyHotspotReservation reservation) {
//                         super.onStarted(reservation);
//                         Log.d(TAG, "Soft AP started successfully");
//                         // Soft AP started successfully
//                     }

//                     @Override
//                     public void onFailed(int reason) {
//                         super.onFailed(reason);
//                         Log.e(TAG, "Failed to start Soft AP. Reason: " + reason);
//                         // Failed to start Soft AP
//                     }

//                     @Override
//                     public void onStopped() {
//                         super.onStopped();
//                         Log.d(TAG, "Soft AP stopped");
//                         // Soft AP stopped
//                     }
//                 }, new Handler(Looper.getMainLooper()));
//             } else {
//                 Log.e(TAG, "Soft AP is not supported on this device");
//             }
//         }
//     }
// }
