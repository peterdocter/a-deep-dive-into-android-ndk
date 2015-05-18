# Hello World


## Declare a Native Method

Create a new activity in your application (in my case `NDKActivity` in the `fr.xgouchet.ndk` package

    static {
        System.loadLibrary("deep-dive");
    }

    native void helloNDK();

    @Override
    protected void onResume() {
        super.onResume();
        helloNDK();
    }


The static initializer will imply load our native library.

Then we declare a `native` method, without body. When we call the method in `onResume()`, the VM will forward our call to the native method present in the library we loaded.

Note that you can call the `System.loadLibrary` method when you want, as long as you call it before calling any native method, else your app will crash.

## Create your first C file

In your application (or your module), create a `src/main/jni` folder, and create a `first.c` file in it, with the following content :


    #include <jni.h>
    #include <android/log.h>


    void Java_fr_xgouchet_ndk_NDKActivity_helloNDK(JNIEnv* env, jobject thiz ) {
        __android_log_print(ANDROID_LOG_INFO, "NDK", "Hello World !");
    }

## Build and run

Once you build and run on a device, or in the emulator, you should see in the log cat output a line looking like this : 

    05-15 06:49:13.221    8724-8724/fr.xgouchet.book.ndk I/NDK﹕ Hello World !
