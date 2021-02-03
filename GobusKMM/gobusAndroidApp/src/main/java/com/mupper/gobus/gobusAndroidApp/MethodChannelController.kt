package com.mupper.gobus.gobusAndroidApp

import com.mupper.gobus.gobusShared.IncreaseCounterUseCaseImpl
import com.mupper.gobus.gobusShared.MethodChannel.UseCaseChannel
import com.mupper.gobus.gobusShared.MethodHandler
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


/**
 * Created by jesus.medina on 01/2021.
 * Insulet Corporation
 * Andromeda
 */
class MethodChannelController(private val flutterEngine: FlutterEngine) {
    fun createUseCaseMethodChannel() {
        UseCaseChannel(listOf(MethodHandler.IncreaseCounterMethodChannel(IncreaseCounterUseCaseImpl()))).createFlutterMethodChannel()
    }

    private fun UseCaseChannel.createFlutterMethodChannel() {
        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            channelName
        ).setMethodCallHandler { call, result ->
            when (val methodHandler = methodHandlers.first { it.methodName == call.method }) {
                is MethodHandler.IncreaseCounterMethodChannel -> {
                    val answer = methodHandler.increaseCounterUseCase()
                    result.success(answer)
                }
                else -> result.notImplemented()
            }
        }
    }
}