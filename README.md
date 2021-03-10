# weight_tracker

App that user can use for tracking his/her own weight.

## USE ##

To start using the app, you will need prerequisites:
Android Studio SDK
Flutter & Dart Plugins in Android Studio
Android Studio/Visual Studio Code 
For starting the app you can:
Use Android Virtual Device or even your own physical device.

For VSCode IDE, you need to install Flutter & Dart Extensions.

In your IDE (VSCode) go to View => Command Palette (CTRL + SHIFT + P).
Type in Flutter, select your preferred device, and run the app.
You can start it with F5 or with Run => Start Debugging (VSCode).


## APP ##

When you start the app, login screen should appear.
Tap login button, the Firebase anonymous sign in function
will trigger and, you will be on the homescreen, hopefully.

You can enter your weight, with or without decimal number.


## EXAMPLE ##

We enter "71.5", the input will be added to Firestore and,
we would get that info with time added, right below the form.

## REMOVING INPUT ##

To remove an input, you just swipe left or right,
on the individual list item.