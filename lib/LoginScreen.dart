import 'package:flutter/material.dart';
import 'package:graduation_project/HomeScreen.dart';
import 'package:graduation_project/SignUpScreen.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPasswordHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
        width: double.infinity,
        color: Color(0xfff2B8ECF),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome!',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Segoe',
                        ),
                      ),
                      SizedBox(height: 5.0,),
                      Image(image: AssetImage('assets/photo7.webp')),
                      SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {
                          print(value);
                        },
                        onChanged: (String value) {
                          print(value);
                        },
                        validator: (value)
                        {
                          if (value!.isEmpty || value.contains('@'))
                          {
                            return 'email must be not empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'E_mail',
                          labelStyle: TextStyle(color: Colors.white,
                            fontFamily: 'Segoe',
                          fontWeight: FontWeight.bold),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.white60,
                          ),
                          border: OutlineInputBorder(),

                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
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
                              return 'password must be not empty';
                            }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white,
                            fontFamily: 'Segoe',
                              fontWeight: FontWeight.bold),
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.white60,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              isPasswordHidden = !isPasswordHidden;
                             // setState(() {});
                            },
                            icon:  Icon(Icons.remove_red_eye_sharp,
                            color: Colors.black54,),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: (){}, child:
                          Text('Forget Password?',style: TextStyle(color: Colors.white,
                            fontFamily: 'Segoe',
                              fontWeight: FontWeight.bold),)
                             )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color(0xfff2B8ECF),
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width ,
                            height: 50,
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
                            child: Text('Login',
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
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',style: TextStyle(color: Colors.white,
                            fontFamily: 'Segoe',
                              fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpScreen()),
                              );
                            },
                            child: Text(
                              'Sign Up',style: TextStyle(color: Colors.white,
                              fontFamily: 'Segoe',
                                fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
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
