# Behaviors

## Back Button:
### Android: 
Press the back button navigates back to the previous screen or dismisses dialogs and overlays.

### iOS: 
iOS rely on a nav bar back button or swipe gestures to navigate back.
located in the nav bar, and users can swipe from the left edge of the screen to navigate back.

## Navigation Bar:
### Android: 
nav bar is located at the top of the screen. 
the navbar containts back button for navigating back, along with other actions/items relevant to the current screen.

### iOS: 
nav bar is located at the top of the screen. 
the navbar containts back button for navigating back, along with other actions/items relevant to the current screen.

## Navigation Gestures:
### Android: 
support various navigation gestures, swiping from the edges of the screen to reveal navigation drawers or navigating between apps with multitasking gestures.

### iOS: 
support swipe gestures for navigation, swiping from the left edge of the screen to navigate back or swiping up from the bottom to access the home screen or multitasking view.


## Transition Animations:
### Android: 
Android Material Design uses slide or fade animations for screen transitions. The animations emphasize motion and continuity.

### iOS: 
iOS animations tend to be more and consistent with Apple HIG.
Transitions include slide, fade, or scale animations.

## Bottom Navigation / TabBar:
### Android: 
Bottom nav bars are used on Android for navigating between top-level destinations within an app.
They typically contain icons or labels representing different sections of the app.

### iOS: 
tab bars at the bottom of the screen have similar purposes like android. 
Tab bars contain icons with optional text labels for navigating between major sections of the app.
example Calls Chats Settings etc.




## Navigation Patterns:
### Android: 
commonly use a navigation drawer (side menu) or bottom navigation bar for navigation between different screens or sections of the app.

### iOS: 
commonly use tab bars or navigation controllers for navigation, along with a back button in the navigation bar for hierarchical navigation.

### Flutter: 
allows us to create navigation patterns that resemble both Android (Material) and iOS (Cupertino) conventions. 
we can customize the nav structure of the Flutter apps to match the platform's design guidelines or create a unique navigation experience that works across both platforms.


## UI Components:
### Android: 
Material is the standard design for Android, example components like floating action buttons, bottom sheets, and snack bars.

### iOS: 
iOS apps comply to Apple's HIG, 
include components like navigation bars, tab bars, and segmented control.

### Flutter: 
Flutter provides widgets that are designed to mirror both Material and Cupertino design styles. 
We can use Material for an Android-like UI or Cupertino for an iOS-like UI. 
and we also can create custom UI components to achieve a unique design that works across platforms.

## Typography and Icons:
### Android: 
default font: Roboto family, and Material icons are commonly used for UI elements.

### iOS: 
default font: SF / SF Pro, and Apple's SF Symbols are commonly used for icons.
### Flutter: 
allows us to specify different font families and icon sets for Android and iOS platforms.can use the `fontFamily` parameter to specify custom fonts and the Icon widget to use custom icons or platform-specific icon sets.


## Dialogs and Alerts:
### Android: 
commonly use dialogs for user prompts, such as alerts, confirmation dialogs, and input dialogs.

### iOS: 
commonly use modal dialogs or action sheets or UIAlert

### Flutter: 
provides `AlertDialog` (Material) and `CupertinoAlertDialog` (Cupertino) widgets,
also we can choose the appropriate dialog style based on the target platform.
and of course we could design our custom dialog.

## Animations and Transitions:
### Android: 
use slide, fade, or scale animations for screen transitions and UI interactions.

### iOS: 
use consistent animations and transitions, such as slide, fade, or crossfade, to provide visual feedback to users.

### Flutter: 
allows us to create custom animations and transitions that resemble both Android and iOS conventions. And we can also use built-in animation widgets or create custom animations using Flutter's animation APIs.

