
# GetX Project Overview

This project demonstrates how to use the **GetX** package in Flutter for state management, navigation, and UI elements such as BottomSheets, Dialogs, Snackbars, and more. Each feature leverages the power of GetX to manage states, routes, and dependencies efficiently.

## Table of Contents

- [Installation](#installation)
- [Project Features](#project-features)
  - [BottomSheet with GetX (Theme Change)](#bottomsheet-with-getx-theme-change)
  - [Navigation with GetX](#navigation-with-getx)
  - [Alert Dialog with GetX](#alert-dialog-with-getx)
  - [Snackbar with GetX](#snackbar-with-getx)
  - [Language Change with GetX](#language-change-with-getx)
- [State Management with GetX](#state-management-with-getx)
  - [Counter Increment with GetX](#counter-increment-with-getx)
  - [Change Opacity with Slider](#change-opacity-with-slider)
  - [Switch Toggle with GetX](#switch-toggle-with-getx)
  - [Favorite List with GetX](#favorite-list-with-getx)
  - [Image Picker with GetX](#image-picker-with-getx)
  - [Login with GetX](#login-with-getx)
- [Contributing](#contributing)

---

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/getx_project.git
   cd getx_project
   ```

2. Install the dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## Project Features

### BottomSheet with GetX (Theme Change)

This project allows users to toggle between light and dark themes using GetX's `Get.bottomSheet`. The `BottomSheet` offers an intuitive way to let users choose their preferred theme.

**Usage Example:**
```dart
Get.bottomSheet(
  Container(
    child: Column(
      children: [
        ListTile(
          title: Text("Light Theme"),
          onTap: () => Get.changeTheme(ThemeData.light()),
        ),
        ListTile(
          title: Text("Dark Theme"),
          onTap: () => Get.changeTheme(ThemeData.dark()),
        ),
      ],
    ),
  ),
);
```

### Navigation with GetX

GetX simplifies navigation between screens with the `Get.to()`, `Get.back()`, and `Get.off()` methods.

**Usage Example:**
```dart
Get.to(NextScreen());
```

### Alert Dialog with GetX

Using GetX, displaying an alert dialog becomes simple with `Get.defaultDialog()`.

**Usage Example:**
```dart
Get.defaultDialog(
  title: "Alert",
  middleText: "This is an alert message.",
);
```

### Snackbar with GetX

GetX's `Get.snackbar` makes it easy to show snack bars for notifications.

**Usage Example:**
```dart
Get.snackbar("Snackbar Title", "This is a snackbar message.");
```

### Language Change with GetX

This project supports localization and allows the user to switch between different languages using GetX's internationalization capabilities.

**Usage Example:**
```dart
var locale = Locale('en', 'US');
Get.updateLocale(locale);
```

## State Management with GetX

### Counter Increment with GetX

Using GetX for state management, this app has a simple counter that increments with a button press.

**Usage Example:**
```dart
class CounterController extends GetxController {
  var count = 0.obs;
  void increment() => count++;
}
```

### Change Opacity with Slider

Control widget opacity using a slider, and manage the state of opacity with GetX.

**Usage Example:**
```dart
class OpacityController extends GetxController {
  var opacity = 1.0.obs;
  void changeOpacity(double value) => opacity.value = value;
}
```

### Switch Toggle with GetX

A toggle switch is implemented with GetX, allowing for an efficient way to handle the state of the switch.

**Usage Example:**
```dart
class SwitchController extends GetxController {
  var isSwitched = false.obs;
  void toggleSwitch(bool value) => isSwitched.value = value;
}
```

### Favorite List with GetX

This feature demonstrates a favorite list where users can add or remove items from their favorite list using GetX's state management.

**Usage Example:**
```dart
class FavoriteController extends GetxController {
  var favoriteList = <String>[].obs;
  void addFavorite(String item) => favoriteList.add(item);
  void removeFavorite(String item) => favoriteList.remove(item);
}
```

### Image Picker with GetX

Pick an image from the user's device and manage the image selection process with GetX.

**Usage Example:**
```dart
class ImagePickerController extends GetxController {
  var selectedImagePath = ''.obs;
  void pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
    }
  }
}
```

### Login with GetX

The app includes a simple login form that uses GetX to manage the login state and logic.

**Usage Example:**
```dart
class LoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;
  
  void login() {
    if (username.value == 'admin' && password.value == '1234') {
      Get.snackbar("Login", "Login successful!");
    } else {
      Get.snackbar("Login", "Login failed.");
    }
  }
}
```

## Contributing

Feel free to open issues and submit pull requests if you'd like to improve this project.

