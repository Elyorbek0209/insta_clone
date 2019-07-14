import 'package:flutter/material.dart';



class InstaStories extends StatelessWidget{


  final topText = Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: <Widget>[

      Text("Stories",
      
        style: new TextStyle(fontWeight: FontWeight.bold),

      ),


      new Row(

        children: <Widget>[

          new Icon(Icons.play_arrow),

          new Text("Watch All", 
          
            style: TextStyle(fontWeight: FontWeight.bold),

          ),

        ],

      )

    ],

  );



  final stories = Expanded(

    child: Padding(

      padding: const EdgeInsets.only(top: 8.0),
      
      child: new ListView.builder(

        scrollDirection:  Axis.horizontal,

        itemCount: 5,

        itemBuilder: (context, index)=> new Stack(

          alignment: Alignment.bottomRight,

          children: <Widget>[

            new Container(

              width: 60.0,

              height: 60.0,

              decoration: new BoxDecoration(

                shape: BoxShape.circle,

                image: new DecorationImage(

                  fit: BoxFit.fill,

                  image: new NetworkImage(
                    
                    "https://scontent-lga3-1.cdninstagram.com/vp/98f3700b60a06c72e7b8cbd1b96ec876/5DB91EE3/t51.2885-19/s150x150/53064309_642229886207926_9072293078999498752_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com"
                    
                  )

                ),

              ),

              margin: const EdgeInsets.symmetric(horizontal: 8.0),

            ),


            index == 0 
            
              ? Positioned(

                right: 10.0,

                child: CircleAvatar(

                  backgroundColor: Colors.blueAccent,

                  radius: 10.0,

                  child: new Icon(
                    
                    Icons.add, size: 14.0, 
                    
                    color: Colors.white
                    
                  ),

                ),

              )

              : new Container()

          ],

        )

      ),
    ),

  );


  @override 
  Widget build(BuildContext context){

    return new Container(

      margin: const EdgeInsets.all(16.0),

      child: new Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,

        mainAxisAlignment: MainAxisAlignment.start,

        mainAxisSize: MainAxisSize.min,

        children: <Widget>[

          topText,

          stories,

        ],

      ),

    );

  }

}




