import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: formKey,
      title:'SignIn Form',

      home: Scaffold(
        appBar: AppBar(
            title: Text('SignIn')
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Sign In',
              textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 40, color: Colors.yellow, fontWeight: FontWeight.w700
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: TextFormField(

                        decoration: InputDecoration(labelText : 'First Name',
                          border: OutlineInputBorder(),
                        ),

                      ),
                    ),
                  ],
                ),
              ),

            ),

            // Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            //   child: TextFormField(
            //     keyboardType: TextInputType.text,
            //     decoration: InputDecoration(hintText: 'Middle Name',
            //       border: OutlineInputBorder(),
            //     ),
            //     onChanged: (String value) {
            //
            //     },
            //     validator: (value) {
            //       return value!.isEmpty
            //           ? 'Please Enter Middle Name.'
            //           : null;
            //     },
            //   ),
            // ),

            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(

                decoration: InputDecoration(labelText: 'Last Name',
                  border: OutlineInputBorder(),
                ),

              ),
            ),





            Padding(padding: EdgeInsets.all(20),
              child: TextFormField(

                decoration: InputDecoration(labelText: 'Password',
                  border: OutlineInputBorder(),
                ),

              ),
            ),
            //
            // Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            //   child: TextFormField(
            //     keyboardType: TextInputType.visiblePassword,
            //     decoration: InputDecoration(hintText: 'Confirm Password',
            //       border: OutlineInputBorder(),
            //     ),
            //     onChanged: (String value) {
            //
            //     },
            //     validator: (value) {
            //       return value!.isEmpty
            //           ? 'Please Re-Enter Your Password.'
            //           : null;
            //     },
            //   ),
            // ),

            SizedBox(height: 10,),

            Padding(padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {



                },
                child: Text('SignIn', style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87),),
              ),
            ),


          ],
        ),
      ),
    );
  }

}