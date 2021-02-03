package com.mupper.gobus.gobusAndroidApp

import com.mupper.gobus.gobusShared.Greeting
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

fun greet(): String {
    return Greeting().greeting()
}

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannelController(flutterEngine).createUseCaseMethodChannel()
    }
}
