allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

// 🛡️ SCRIPT DE SECOURS AUTO-INJECTEUR POUR LE NAMESPACE ISAR (KOTLIN DSL)
subprojects {
    afterEvaluate {
        if (project.plugins.hasPlugin("com.android.library") || project.plugins.hasPlugin("com.android.application")) {
            val androidExtension = project.extensions.findByName("android")
            if (androidExtension != null && project.name == "isar_flutter_libs") {
                // Force l'injection du namespace réglementaire d'Isar exigé par Google en 2026
                (androidExtension as com.android.build.api.dsl.CommonExtension<*, *, *, *, *, *>).namespace = "dev.isar.isar_flutter_libs"
            }
        }
    }
}