# About JNI

JNI stands for `Java Native Interface` and is a programming framework used to link native code that is code compiled for speed, to Java code running in a JVM.

The `Java Native Interface` is a very usefull tool, but it must be used wisely for its effects to stay positive.

## Portability

Java has been designed from the first day to be portable, which is why it must run in a JVM. Java code desribes relatively high level instructions, which are then translated at runtime into processor instructions.

Then each type of processor architecture has its own JVM to translate Java bytecode into processor instructions.

Using JNI means that developer must compile themselves their code for each processor architecture.
