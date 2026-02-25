import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  // Function to show Alert Dialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert Box"),
          content: Text("This is an alert dialog in Flutter."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  // Function to show Snackbar
  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("This is a Snackbar message!"),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: "UNDO",
          onPressed: () {
            // Action when UNDO is pressed
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert & Snackbar Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showAlertDialog(context),
              child: Text("Show Alert Box"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showSnackbar(context),
              child: Text("Show Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
