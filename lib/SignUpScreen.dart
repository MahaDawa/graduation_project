import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class SignUpScreen extends StatelessWidget {
//  const SignUpScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                        ),

                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: '  User Name',
                          labelStyle: TextStyle(color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,),
                          prefixIcon: Icon(Icons.person_outline,color: Colors.black,),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'user name must be not empty';
                          }
                            return null;
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: '  Phone Number',
                          labelStyle: TextStyle(color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,),
                          prefixIcon: Icon(Icons.phone_in_talk_outlined,color: Colors.black,),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'phone number must be not empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'email must be not empty';
                          }
                          else if (value.contains('@'))
                          {
                            return 'email must have "@"';
                          }
                           return null;
                        },
                        decoration: InputDecoration(
                          labelText: '   E_mail',
                          labelStyle: TextStyle(color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),

                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(

                        keyboardType: TextInputType.visiblePassword,
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'password must be not empty';
                          }
                          return null;
                        },
                        obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: '   Password',
                          labelStyle: TextStyle(color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_sharp,
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(

                        keyboardType: TextInputType.text,
                        validator: (value)
                        {
                          if (value!.isEmpty)
                          {
                            return 'gender must be not empty';
                          }
                           return null;
                        },
                        obscureText: true,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        decoration: InputDecoration(
                          labelText: '   Gender',
                          labelStyle: TextStyle(color: Color(0xfff2B8ECF),
                            fontFamily: 'Segoe',
                            fontWeight: FontWeight.bold,),
                          prefixIcon: Icon(
                            Icons.people_outline,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Material(
                        borderRadius: BorderRadius.circular(50.0),
                         color: Color(0xfff2B8ECF),
                          //color: Colors.cyanAccent,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width ,
                            height: 47,
                            color: Colors.white,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                            onPressed: () {
                              if(formKey.currentState!.validate()) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()),
                                );
                              }
                            },
                            child: Text('Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xfff2B8ECF),
                                fontFamily: 'Segoe',
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
