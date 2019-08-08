import 'package:flutter/material.dart';
import 'package:insta_clone/insta_body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class InstaHome extends StatelessWidget{



   @override
  Widget build(BuildContext context){


    return new Scaffold(


      appBar: topBar,


      body: new InstaBody(),



      bottomNavigationBar: bottomBar(),
      

    );

  }





  final topBar = AppBar(


    backgroundColor: new Color(0xfff8faf8),


    centerTitle: true,


    elevation: 1.0,



    leading: IconButton(

      icon: Icon(
        
        FontAwesomeIcons.camera,

        color: Colors.black,

      ),

      onPressed: (){

        //

      },

    ),
    
  


    title: SizedBox(


      height: 35.0, 

      
      child: Image.asset(
        
        "assets/images/insta_logo1.png"
        
      ),


    ),



    actions: <Widget>[


      Padding(

        padding: const EdgeInsets.only(right: 12.0),

        child: Icon(
        
          Icons.send,

          color: Colors.black,
          
        ),

      )


    ],

  );




  Widget bottomBar(){


    return Container(


        color: Colors.white,

        height: 50.0,

        alignment: Alignment.center,


        child: new BottomAppBar(

          child: new Row(


            mainAxisAlignment: MainAxisAlignment.spaceAround,


            children: <Widget>[


              new IconButton(

                icon: Icon(Icons.home),

                onPressed: () {},

              ),



              new IconButton(

                icon: Icon(Icons.search),

                onPressed: null,

              ),




              new IconButton(

                icon: Icon(Icons.add_box),

                onPressed: null,

              ),



              new IconButton(

                icon: Icon(Icons.favorite),

                onPressed: null,

              ),



              new IconButton(

                icon: Icon(Icons.account_box),

                onPressed: null,

              )


            ],


          ),

        ),


      );


  }





 
}




