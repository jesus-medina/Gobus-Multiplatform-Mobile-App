package com.mupper.gobus.gobusShared


class Greeting {
    fun greeting(): String {
        return "Hello, ${Platform().platform}!"
    }
}
