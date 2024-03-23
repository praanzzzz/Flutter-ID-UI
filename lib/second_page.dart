import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: const Key('secondPage'), // Add a key to the Scaffold
      appBar: AppBar(
        title: const Text('ID Card Back'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/bt.png',
                  width: 380, height: 200),
              ],             
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                        'Date of Issued: 12/12/2023',
                        style: TextStyle(fontSize: 18), 
                      ),
              ],
            ),
            const SizedBox(height: 5),
           const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'VALID UNTIL: 12/12/24',
                  style: TextStyle(fontSize: 18),
                  ),
              ],
            ),
            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'UNLESS EARLIER REVOKED OR SURRENDER',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
              ],
            ),


            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'The person whose picture and signature appears',
                  style: TextStyle(fontSize: 16),
                  ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'bonafide srudent of Cebu Technological University',
                  style: TextStyle(fontSize: 16),
                  ),
              ],
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'This card is non transferable property of CTU and',
                  style: TextStyle(fontSize: 16),
                  ),
              ],
            ),
            
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'must be surrendered upon graduation or transfer',
                  style: TextStyle(fontSize: 16),
                  ),
              ],
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Card must be presented upon entry and must worn',
                  style: TextStyle(fontSize: 16),
                  ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'when inside the university premises.',
                  style: TextStyle(fontSize: 16),
                  ),
              ],
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Tampering invalidates this card and subject to',
                  style: TextStyle(fontSize: 16),
                  ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'disciplinary action',
                  style: TextStyle(fontSize: 16),
                  ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'In case of loss, please request to SAO office',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'DR ROSEIN A. ANCHETA JR.',
                  style: TextStyle(decoration: TextDecoration.underline,decorationThickness: 3.0,fontSize: 18, fontWeight: FontWeight.bold),
                  ),
              ],
            ),

            
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SUC PRESIDENT IV',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
              ],
            ),

            // BUTTON REDIRECTION
            ElevatedButton(
              onPressed: () {
                _showConfirmationDialog(context);
              },
              child: const Text('Go to First Page'),
            ),
          ],
        ),
      ),
    );
  }
}



//Functions here

//FUNCTIONS HERE
// Function to show the confirmation dialog
Future<void> _showConfirmationDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Confirmation'),
        content: const Text('Do you want to go back the front page?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Close the dialog
              Navigator.of(context).pop();
              //redirect
              Navigator.pop(context);
              //Toast
              showToast('Sucessfully Redirected to 1st Page');
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
