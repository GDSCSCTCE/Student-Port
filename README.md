<a>
  <h1 align="center">
    <img src="https://user-images.githubusercontent.com/96013756/195433701-f425b0b1-dbff-4c98-abf9-86218e5c5b9c.png" alt="Sct-Lab" width="500" height="500">
    </img>
  </h1>
</a>

[![GDSC handle][]][GDSC badge]
[<img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" width=75 height=20>](https://www.linkedin.com/company/gdsc-sctce)
[<img src="https://img.shields.io/badge/twitter-%231DA1F2.svg?&style=for-the-badge&logo=twitter&logoColor=white" width=75 height=20>](https://twitter.com/GDSC_SCTCE)
[<img src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white" width=85 height=20>](https://www.instagram.com/gdscsctce)
[<img src="https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white" width=75 height=20>](https://github.com/GDSC-SCTCE)
[<img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white" width=70 height=20>](https://mail.google.com/mail/?view=cm&fs=1&to=gdscsctce@gmail.com)

# SCT-LAB

Sct-Lab is an open-source alternative for Etlab. This was set in motion because we wanted to create a convenient and free to use system for the updation and management of student details in various institutions since Etlab is a paid application and is not convenient for everyone.

## About Etlab

Etlab is a campus management system from the team of Etuwa Concepts Pvt. Ltd. Etuwa Concepts. It  offers an integrated suite of software application to automate the campus,gives an edge in addressing all the administrative requirements of the institution with user specific login system with each personnel associated with the institution has a unique login.

## How to Use 

**Step 1:** Download or clone this repo by using the link below:

```
https://github.com/GDSCSCTCE/sct-lab.git
```

**Step 2:** Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```

**Step 3:** To run the project, use:

```
flutter run 
```

**Step 4:** To build the apk, use:

```
flutter build apk -release
```

## App Features:

* 
* 
*

## Libraries & Tools Used

*
*
*

### Folder Structure
Here is the core folder structure which Sct-Lab provides:

```
sct-lab-app/
|- android
|- ios
|- lib
|- linux
|- macos
|- test
|- web
|- windows
```

Here is the folder structure we have been using in this project

```
lib/
|-
|- 
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```

### Constants

This directory contains all the application level constants. A separate file is created for each type as shown in example below:

```
constants/
|- 
|- 
```

### Data

All the business logic of your application will go into this directory, it represents the data layer of your application. It is sub-divided into three directories `local`, `network` and `sharedperf`, each containing the domain specific logic. Since each layer exists independently, that makes it easier to unit test. The communication between UI and data layer is handled by using central repository.

```
data/
|- 

```

### Stores

The store is where all your application state lives in flutter. The Store is basically a widget that stands at the top of the widget tree and passes it's data down using special methods. In-case of multiple stores, a separate folder for each store is created as shown in the example below:

```
stores/
|- 
```

### UI

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
ui/
|- 
```

### Utils

Contains the common file(s) and utilities used in a project. The folder structure is as follows: 

```
utils/
|- 
```

### Widgets

Contains the common widgets that are shared across multiple screens. For example, Button, TextField etc.

```
widgets/
|- 
|- 

```

### Routes

This file contains all the routes for your application.

```dart


```

### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart

```

## Conclusion

We will be happy to answer any questions that you may have on this approach, and if you want to lend a hand with this project then please feel free to submit an issue and/or pull request

[flutter.dev]: https://flutter.dev
[GDSC badge]: https://gdsc.community.dev/sree-chitra-thirunal-college-of-engineering-thiruvananthapuram/
[GDSC handle]: https://img.shields.io/website?down_color=lightgrey&down_message=offline&label=Website&style=flat-square&up_message=live&url=https%3A%2F%2Fgdsc.community.dev%2Fsree-chitra-thirunal-college-of-engineering-thiruvananthapuram%2F
[Dart platform]: https://dart.dev/
[Flutter packages]: https://pub.dev/flutter