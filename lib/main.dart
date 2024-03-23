import 'package:flutter/material.dart';
import 'second_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Redirect Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Franz\' App'),
        backgroundColor: const Color.fromARGB(255, 237, 221, 95),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/ctulogo.jpg',
                      width: 50, height: 50),
                  const SizedBox(width: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Republic of the Philippines',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        'CEBU TECHNOLOGICAL',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),

              //ANOTHER ROW
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/asean.png', width: 50, height: 50),
                  const SizedBox(width: 20),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'UNIVERSITY',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Main Campus: M.J. Cuenco Avenue',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'corner R. Palma St., Cebu City,',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),

              // Centered content
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Image
                    Image.asset(
                      'assets/images/idPic.jpg',
                      width: 225,
                      height: 250,
                    ),

                    Image.asset('assets/images/sig.png', width: 80, height: 30),

                    const Text(
                      'Franz Anthony D. Gabijan',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Text(
                      'BSIT',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    const Text(
                      '________________________',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'COURSE',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      'ID NO.: 1357176',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Button to navigate to the Second Page
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the second page when the button is pressed
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => SecondPage()),
                        // );
                        _showConfirmationDialog(context);
                      },
                      child: const Text('Go to Second Page'),
                    ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/building.png',
                                  width: 100, height: 50),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset('assets/images/tuv.jpg',
                                  width: 100, height: 50),
                            ],
                          ),
                        ])
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//FUNCTIONS HERE
// Function to show the confirmation dialog
Future<void> _showConfirmationDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Confirmation'),
        content: const Text('Do you want to proceed to the next page?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Close the dialog
              Navigator.of(context).pop();
              //redirecte
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
              //Toast
              showToast('Sucessfully Redirected to 2nd Page');
            },
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () {
              // Close the dialog
              Navigator.of(context).pop();
            },
            child: const Text('No'),
          ),
        ],
      );
    },
  );
}

//Function to show the toast message after succesfully redirect
void showToast(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
