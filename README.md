# shopping_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

- API Key - AIzaSyDg1lmZtR0HNQSj0kjBNfkeILpTKdKfNv8
- Base URL - flutter-state-management-10587-default-rtdb.firebaseio.com

# Database Rules

{
"rules": {
".read": "auth!=null", // 2021-12-22
".write": "auth !=null", // 2021-12-22
"products":{
".indexOn":["creatorId"]
}
}
}
