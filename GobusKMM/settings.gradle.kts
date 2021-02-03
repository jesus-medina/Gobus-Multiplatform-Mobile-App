pluginManagement {
    repositories {
        google()
        jcenter()
        gradlePluginPortal()
        mavenCentral()
    }
    
}
rootProject.name = "Gobus"


include(":gobusAndroidApp")
include(":gobusShared")
apply { from("flutter_settings.gradle") }
