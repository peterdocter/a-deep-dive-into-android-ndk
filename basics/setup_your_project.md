# Setup your project

## Update your `build.gradle`

Opening your `build.gradle` file, include the following line in the `android` section :


    defaultConfig {
        // [...]
        ndk {
            moduleName "deep-dive"
            ldLibs "log"
            abiFilter "all"
        }
    }

    buildTypes {
        // [...]
        debug {
            ndk {
                abiFilter "armeabi-v7a"
            }
        }
    }


What does this mean ? Let's check each parameters :

 - `moduleName` : this sets the name of the library which will be compiled, and is also the name we're going to use when we want to load the library into our app;
 - `ldLibs` : this lists the NDK libraries our code depends on. The NDK comes with a few libraries you can use in your own apps. Here  we simply depend on the `logs` ibrary which enables us to write into the Android LogCat;
 - `abiFilter : this sets the target processor architecture our library is going to be compiled for. Because we're writing native code, it as to be compiled differently for each processor type supported by Android. But as this step can take some time, we override this value in debug, to only compile against the processor we're going to test, in my case armeabi-v7a. 

## Specify the NDK tools location

Your project should already contain a `local.properties` file at its root, which specifies the location of the Android SDK buildtools on your computer. It should be something like :

    sdk.dir=/home/user/android/sdk

Simply add a line pointing to the folder where you installed the NDK :

    ndk.dir=/home/user/android/ndk
