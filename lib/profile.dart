import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'editpage.dart';

final controller = PageController(

  initialPage: 1,

);

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xFF18D191)),
      ),

      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //Profile Text
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text(
            "Profile",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        SizedBox(
          height: 5.0,
        ),

        //Image
        Image.network(
          "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
          width: double.infinity,
        ),

        SizedBox(
          height: 15.0,
        ),
        Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //Username
                Text(
                  "CARRIE SANDERS",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "San Fransisco, CA",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                      ),
                      Icon(
                        Icons.chat_bubble_outline,
                      ),
                      Icon(
                        Icons.video_library,
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        "2,145 Followers",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold,),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        "1,765 Following",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                    ),


                  ],
                ),

                SizedBox(
                  height: 20.0,
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    "I am a product and visual designer based in San Fransisco, California."
                        " I have designed at Google, Amazon and Facebook.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),

                /*   FlatButton(
                    onPressed: (){},
                    child: Text("FOLLOW",style: TextStyle(color: Colors.white),),
                    color: Color(0xFFD6ABBB),
                ),
                */

                Container(
                  height: 130.0,
                  width: double.infinity,
                  color: Color(0xFFD6ABBB),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 48.0),
                    child: Text(
                      "FOLLOW",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                //pageView,
              ],
            ),
          ),
        ),
      ],
    );
  }
}



final pageView = PageView(
  controller: controller,
  scrollDirection: Axis.vertical,
  children: <Widget>[
    EditPage(),
  ],

);
