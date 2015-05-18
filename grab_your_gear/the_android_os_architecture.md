# The Android OS Architecture

## Sandboxes
Android is built upon Linux, and each application runs in its own sandbox. Each application has its own user and group, and can't access any data that is not considered public, appart from its own. This is one way to ensure security and confidentiality in Android.

What makes Android system unique is the fact that almost all applications are written in Java, and run into their own JVM created specifically for Android. t first it was the Dalvik VM, which had been replaced in 2014 by the ART VM, an optimized VM.

## Java, or not Java ?

Java, one of the oldest and most popular language still in use today.

To be honest, the Android framework doesn't use the standard Java you may already know, but rather a specific subset (and custom implementation) of Java.

The choice of Java, at first, was a smart one for a brand new platform. With a familiar language, and thousands of existing libraries, was a way to attract developpers.

But it also means that the code is converted to bytecode, which is then read at runtime in a virtual machine, instead of converted to assembly code and run directly on the device's processor.

For most applications, this is not a problem, but hen you need to perform heavy computation, Java is not the best choice.

Fortunately, there's already a tool called JNI which allow Java code to call native code, which can then speed up the operations you're doing.

In Android, the JNI framework is coupled with a couple of libraries and  tools which are known as the NDK, the `Native Development Kit`.
