import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../HomeScreen.dart';

class About_MP extends StatelessWidget {
  const About_MP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('      Tips and Advice',
            style: TextStyle(color: Colors.indigoAccent,
              fontSize: 25,fontStyle: FontStyle.italic)),
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            icon: Icon(Icons.arrow_back,color: Colors.indigoAccent,),
          ),
      ),
      body: SafeArea(
          child: Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 5.0,bottom: 5.0,left: 20.0,right: 20.0,),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/photo6.jpeg'),
                    ),
                    SizedBox(
                     height: 20,
                    ),
                    Text('If you have monkeypox, your health care provider will advise wether you should'
                        ' receive care in a hospital or at home. If she is advised to isolate at home , she '
                        'should not go out. Protect others you live with as much as possible by: '
                        '\n\1- Isolate in a seprate room.''\n\2- Use a seprate bathroom or clean it after each use.'
                        '\n\3- Clean and disinfect frequently touched surface with soap and water and a household disinfectent.'
                        '\n\4- Using or cleaning your utensils, objects or electronics with soap and water'
                        '/sanitizer before sharing them.\n\5- Do not share towels, bedding or clothes.'
                         '\n\6- Wash your clothes yourself.\n\7- Open windows for good ventilation.\n\8- Encouraging everyone'
                        'in the home to clean their hands regularly with soap and water or an alcohol-based hand rub.'  ,
                      style:TextStyle(color: Colors.indigoAccent,
                        fontSize: 20,fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,wordSpacing: 2),),
                  ],
                ),
              ),

            ),
          )


      ),
    );
  }
}

