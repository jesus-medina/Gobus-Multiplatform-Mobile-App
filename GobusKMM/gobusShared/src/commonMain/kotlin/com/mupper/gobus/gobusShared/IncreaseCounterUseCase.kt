package com.mupper.gobus.gobusShared


/**
 * Created by jesus.medina on 02/2021.
 * Insulet Corporation
 * Andromeda
 */
interface IncreaseCounterUseCase {
    operator fun invoke(): Int
}

class IncreaseCounterUseCaseImpl : IncreaseCounterUseCase {
    var counter = 0

    override fun invoke(): Int {
        counter += 10
        return counter
    }
}