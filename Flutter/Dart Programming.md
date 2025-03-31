---
share_link: https://share.note.sx/8tlfbcdq#7snbSCAY+b9GEXjxl1QE4Ms6VnpsbOePCME1Htd0qC8
share_updated: 2025-03-31T11:43:41+05:30
---

# What is Dart ?
		Dart is a client-optimized, garbage-collected, OOP language for creating fast apps that run on  any platform.


Not an Stand -alone 
	Just like java it also need the virtual machine to run the dart which is known as DVM.

AOT Compiled

Ahed Of Time Compilation  - act of translating a high-level programming language, like Dart, into native machine code.

![[Pasted image 20250331102301.png]]


With AOT there is NO need to have the DVM installed because at the end you get a single
Binary file (an .apk or .aab for Android, an .ipa for iOS, an .exe for Windows...) that can
Be executed

AOT compilation is very powerful because it natively brings Dart to mobile desktop. You’ll
End up having a single native binary which doesn’t require a DVM to be installed on the
Client in order to run the application.

#### Web. 
Thanks to the<mark style="background: #BBFABBA6;"> dart 2 js</mark> tool, your Dart project can be "transpiled" into fast and
Compact <mark style="background: #ABF7F7A6;">JavaScript code.</mark> By consequence Flutter can be run, for example, on Firefox or
Chrome and the UI will be identical to the other platforms.

![[Pasted image 20250331102836.png]]



## Development and Deployement Process

![[Pasted image 20250331102937.png]]


### Desktop/mobile .
.<mark style="background: #FFF3A3A6;">The Just In Time (JIT) </mark>technique can be seen as a "real time trans-
Lation" because the compilation happens while the program is executing. It’s a sort of
<mark style="background: #ABF7F7A6;">"dynamic compilation"</mark> which happens while the program is being used.

 JIT compilation, combined with the <mark style="background: #ABF7F7A6;">DVM (JIT + VM in the picture),</mark> allows the dispatch
Of the code dynamically without considering the user’s machine architecture.
### Web. 
The <mark style="background: #BBFABBA6;">Dart development compiler,</mark> abbreviated with <mark style="background: #BBFABBA6;">dartdevc, </mark>allows you to run and
Debug Dart web apps on Google Chrome. 

For Deployment, you should use dart2js

# Hello World 

```
void main() {

Print ("Hello World");
}
```

Using DartPad Online compiler for practicing purposes


# Flutter
Flutter is an UI toolkit for building natively compiled applications for mobile, desktop and
web With a single codebase.

![[Pasted image 20250331105410.png]]

The platform, which can be Android or iOS, exposes a series of OEM widgets used by
The app to build the UI. Those widgets are fundamental because they give our app the
Capabilities to paint the UI, use the canvas and respond to events such as finger taps.


 If you wanted to take a picture from your app or use the bluetooth to send a file, there
Would be the need to communicate with the native API exposed by the platform. For
Example, using OS-specific APIs, you could ask for the camera service, wait for a response
And then start using it.

The cross-platform approach is different and it has to be like so. If you want your app to run on
Both Android and iOS with the same codebase, you can’t directly use OEM widgets and their API
Because they come from different architectures.

ART - Android Run Time 

![[Pasted image 20250331105551.png]]

The picture has rectangles on Android and triangles on iOS to indicate that OEM widgets and
APIs have differences in how they are structured, in how they interact with the app and in how
You have to use them. For this reason, cross-platform apps cannot directly "talk" to the under-
Lying environment: they must speak a language that everyone can understand.


## How does it working in flutter 

![[Pasted image 20250331105745.png]]



It uses its own very efficient rendering engine, called <mark style="background: #ABF7F7A6;">Skia</mark>, to paint the UI so that OEM widgets
Are not needed anymore. In this way, the app doesn’t rely on the instruments the OS exposes to
Draw the interface and you can freely control each single pixel of the screen.

The true power of Flutter lies on the fact that apps are built with their own rendering stuff and
They are not constrained to paint the UI following the rules "imposed" by OEM widgets. You’re
Free to control the screen and manipulate every single pixel.