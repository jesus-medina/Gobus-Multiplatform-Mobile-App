package com.mupper.gobus.gobusShared


/**
 * Created by jesus.medina on 02/2021.
 * Insulet Corporation
 * Andromeda
 */
sealed class MethodChannel(val channelName: String) {
    class UseCaseChannel(val methodHandlers: List<MethodHandler>) :
        MethodChannel("com.mupper.gobus.flutter/UseCase")
}

sealed class MethodHandler(val methodName: String) {
    class IncreaseCounterMethodChannel(val increaseCounterUseCase: IncreaseCounterUseCase) : MethodHandler(
        "increaseCounterUseCase",
    )
}
