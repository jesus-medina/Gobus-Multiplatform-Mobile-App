//
//  MethodChannelController.swift
//  gobusIosApp
//
//  Created by Jesus Daniel Medina on 02/02/21.
//  Copyright © 2021 orgName. All rights reserved.
//
import Flutter
import gobusShared

class MethodChannelController {
  let binaryMessenger: FlutterBinaryMessenger
  
  init(_ binaryMessenger: FlutterBinaryMessenger) {
    self.binaryMessenger = binaryMessenger
  }
  
  func createUseCaseChannel() {
    let array = [
      MethodHandler.IncreaseCounterMethodChannel.init(increaseCounterUseCase: IncreaseCounterUseCaseImpl.init())
    ]
    MethodChannel.UseCaseChannel.init(methodHandlers: array).createFlutterMethodChannel(binaryMessenger)
  }
}

extension MethodChannel.UseCaseChannel {
  func createFlutterMethodChannel(_ binaryMessenger: FlutterBinaryMessenger) {
    FlutterMethodChannel(
      name: channelName,
      binaryMessenger: binaryMessenger
    ).setMethodCallHandler({
      (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
      let methodHandler = self.methodHandlers.first(where: { $0.methodName == call.method })
      switch (methodHandler) {
      case is MethodHandler.IncreaseCounterMethodChannel:
        let increaseCounterUseCase = (methodHandler as! MethodHandler.IncreaseCounterMethodChannel).increaseCounterUseCase
        let response = increaseCounterUseCase.invoke()
        result(response)
        break;
      default:
        result(FlutterMethodNotImplemented)
        break;
      }
    })
  }
}
