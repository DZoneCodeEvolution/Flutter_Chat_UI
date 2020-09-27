import 'package:chat_ui/widgets/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/models/message_model.dart';

class FavoritContect extends StatefulWidget {
  @override
  _FavoritContectState createState() => _FavoritContectState();
}

class _FavoritContectState extends State<FavoritContect> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Fevorit Contact',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
              ],
            ),
          ),
          Container(
            height: 120.0,
            color: Theme.of(context).accentColor,
            child:
                ListView.builder(
                  padding: EdgeInsets.only(left: 15.0),
                  scrollDirection: Axis.horizontal,
                    itemCount: favorites.length,
                    itemBuilder: (BuildContext context,int index){
                      return GestureDetector(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder:(_)=> ChatScreen(user:favorites[index]) )),

                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 25.0,
                                backgroundImage: AssetImage(favorites[index].imageUrl),
                              ),
                              SizedBox(height: 6.0,),
                              Text(favorites[index].name,style: TextStyle(color: Colors.blueGrey,fontSize: 16.0,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      );
                    }
                ),
          )
        ],
      ),
    );
  }
}
