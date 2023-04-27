import 'package:flutter/material.dart';
import 'package:graduation_project/Pages_HomeScreen/About_MP.dart';
import 'MyDrawer.dart';


class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  var currentPage = DrawerSections.values;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Hi Reem!',style: TextStyle(color: Colors.indigoAccent,
            fontWeight:FontWeight.bold ))),
        elevation: 0.0,
        backgroundColor: Colors.white,
         leading: Builder(
           builder: (BuildContext context){
             return IconButton(
                 icon:const Icon(Icons.article_outlined,color: Colors.indigoAccent),
             onPressed: (){
               Scaffold.of(context).openDrawer();
             },
             );
           },
         ),
    //  iconTheme: IconThemeData(color: Colors.indigoAccent,),

      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all( 30.0,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    const Text(
                    'How do you feel today?',
                    style: TextStyle(fontSize: 30, color: Colors.indigoAccent),
                  ),
                  const SizedBox(height: 50.0,),
                 Padding(
                   padding: const EdgeInsets.all(30.0),
                   child: Material(
                     elevation: 10.0,
                     borderRadius: BorderRadius.circular(50.0),
                     color: Colors.indigoAccent,
                     child: MaterialButton(
                       minWidth: MediaQuery.of(context).size.width ,
                       height: 100,
                       color: Colors.indigoAccent,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                       splashColor: Colors.indigoAccent,
                       onPressed: () {},
                       child: Text('Diagnose',
                      textAlign: TextAlign.center,
                       style: TextStyle(
                         fontSize: 35.0,
                         color: Colors.white,
                         fontWeight: FontWeight.w400,
                       ),),
                     ),
                     ),
                 ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.indigoAccent,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width ,
                        height: 100,
                        color: Colors.indigoAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                        splashColor: Colors.indigoAccent,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => About_MP()),
                          );
                        },
                        child: Text('About MP',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.indigoAccent,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width ,
                        height: 100,
                        color: Colors.indigoAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                         splashColor: Colors.indigoAccent,
                        onPressed: () {},
                        child: Text('Chat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),),
                      ),
                    ),
                  ),
             ]
            ),
            ),
          ],
        ),

      ),
      drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  MyDrawerHeader(),
                  MyDrawerList(),
                ],
              ),
            ),
          ),
        ),

    );
  }
    Widget MyDrawerList(){
      return Container(
        padding: const EdgeInsets.only(top: 20,bottom: 30),
        child: Column(
          children: [
            menuItem(1, "Profile",Icons.person,
            currentPage ==DrawerSections.Profile ? true : false),
            Divider(color: Colors.indigoAccent,height: 25),
            SizedBox(height: 30),
            menuItem(2, "Setting",Icons.settings,
                currentPage ==DrawerSections.Setting ? true : false),
            Divider(color: Colors.indigoAccent,height: 25),
            SizedBox(height: 30),
            menuItem(3, "About us",Icons.info_outlined,
                currentPage ==DrawerSections.About_us ? true : false),
            Divider(color: Colors.indigoAccent,height: 25),
            SizedBox(height: 30),
            menuItem(4, "Rate us",Icons.star_border_rounded,
                currentPage ==DrawerSections.Rate_us ? true : false),
            Divider(color: Colors.indigoAccent,height: 25),
            SizedBox(height: 30),
            menuItem(5, "Logout",Icons.logout,
                currentPage ==DrawerSections.Logout ? true : false),

          ],
        ),
      );
    }
    Widget menuItem(int id,String title,IconData icon,bool selected){
    return Material(
      color: selected ? Colors.indigoAccent : Colors.transparent,
      child: InkWell(
        onTap: (){},
          child: Row(
            children: [
              Expanded(child: Icon(icon,size: 45,color: Colors.indigoAccent,)),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,style:TextStyle(color: Colors.indigoAccent,fontSize: 30,)))
            ],
        ),
      ),
    );
    }
}

enum DrawerSections{
  Profile,
  Setting,
  About_us,
  Rate_us,
  Logout,
}

