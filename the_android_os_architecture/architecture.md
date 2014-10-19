# The Android OS Architecture

Android is built upon Linux, and each application runs in its own sandbox. Each application has its own user and group, and can't access any data that is not considered public, appart from its own. This is one way to ensure security and confidentiality in Android.

What makes Android system unique is the fact that almost all applications are written in Java, and run into their own JVM created specifically for Android.

The main argument against Java has always been the fact that the bytecode sed at runtime is far from optimal, and needs to be interpreted.

Although this is a fine choice for most application, it's sometimes not fast enough for some operations. This is where JNI comes in, allowing Android developers to use native C/C++ code.

