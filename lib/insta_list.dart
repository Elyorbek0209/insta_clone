import 'package:flutter/material.dart';

import 'package:insta_clone/insta_stories.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class InstaList extends StatelessWidget{


  @override 
  Widget build(BuildContext context){

    
    /* Here we'll use 'BuildContext context' with 
    'MediaQuery' to find out the current Devices ScreenSize!*/

    var deviceSize = MediaQuery.of(context).size;
    

    return new ListView.builder(

      itemCount: 100,

      itemBuilder: (context, index) => index == 0 
      
        ? new SizedBox(

            child: new InstaStories(),

            height: deviceSize.height *0.18,

        )

        : Column(

          mainAxisAlignment: MainAxisAlignment.start,

          mainAxisSize: MainAxisSize.min,

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            //----Here 1st Row Starts ----

            Padding(

              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[

                  Row(

                    children: <Widget>[

                      new Container(

                        height: 40.0,

                        width: 40.0,

                        decoration: new BoxDecoration(

                          shape: BoxShape.circle,

                          image: new DecorationImage(

                            fit: BoxFit.fill,

                            image: new NetworkImage("https://scontent-lga3-1.cdninstagram.com/vp/98f3700b60a06c72e7b8cbd1b96ec876/5DB91EE3/t51.2885-19/s150x150/53064309_642229886207926_9072293078999498752_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com"
                            
                            )

                          )

                        ),

                      ),


                      new SizedBox(

                        width: 10.0,

                      ),


                      new Text("Emsa",
                      
                        style: TextStyle(fontWeight: FontWeight.bold),
                      
                      )

                    ],

                  ),


                  new IconButton(

                    icon: Icon(Icons.more_vert),

                    onPressed: null,
                      
                  )
                  
                ], 

              ),
          
          ),

           //----Here 2nd Row Starts ----

          Flexible(

            fit: FlexFit.loose,

            child: new Image.network("https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            
              fit: BoxFit.cover,
            
            ),

          ),


           //----Here 3rd Row Starts ----

           Padding(

                  padding: const EdgeInsets.all(16.0),
             
                  child: Row(
             
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
                    children: <Widget>[
             
                      new Row(
             
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
                        children: <Widget>[
             
                          new Icon(
             
                            FontAwesomeIcons.heart,
             
                          ),
             
                          new SizedBox(
             
                            width: 16.0,
             
                          ),
             
                          new Icon(
             
                            FontAwesomeIcons.comment,
             
                          ),
             
                          new SizedBox(
             
                            width: 16.0,
             
                          ),
             
                          new Icon(FontAwesomeIcons.paperPlane),
             
                        ],
             
                      ),
             
                      new Icon(FontAwesomeIcons.bookmark)
             
                    ],
             
                  ),
             
                ),
             
             
                Padding(
             
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
             
                  child: Text(
             
                    "Liked by Janob and 528,331 others",
             
                    style: TextStyle(fontWeight: FontWeight.bold),
             
                  ),
             
                ),
             
             
                Padding(
             
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
             
                  child: Row(
             
                    mainAxisAlignment: MainAxisAlignment.start,
             
                    children: <Widget>[
             
                      new Container(
             
                        height: 40.0,
             
                        width: 40.0,
             
                        decoration: new BoxDecoration(
             
                          shape: BoxShape.circle,
             
                          image: new DecorationImage(
             
                              fit: BoxFit.fill,
             
                              image: new NetworkImage(
             
                                  "https://scontent-lga3-1.cdninstagram.com/vp/c188031b0c8b625d8e7443f03f698739/5DAB922A/t51.2885-19/s150x150/57071110_813551222351922_7206735856017604608_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com")),
             
                        ),
             
                      ),
             
                      new SizedBox(
             
                        width: 10.0,
             
                      ),
             
                      Expanded(
             
                        child: new TextField(
             
                          decoration: new InputDecoration(
             
                            border: InputBorder.none,
             
                            hintText: "Add a comment...",
             
                          ),
             
                        ),
             
                      ),
             
                    ],
             
                  ),
             
                ),
             
             
                Padding(
             
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
             
                  child:
             
                      Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
             
                )
             
              ],
            
            ),


    );

  }
}



