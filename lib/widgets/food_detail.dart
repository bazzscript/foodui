import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodDetail extends StatelessWidget {
  var tileColor;
  var foodName;
  var imageUrl;
  FoodDetail({ Key? key,this.tileColor = Colors.white, required this.imageUrl, required this.foodName }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 2.0, bottom: 2.0,),
        height: 155.0,
        width: 150.0,
        color: tileColor,
        child: Padding(
          padding: const EdgeInsets.only(top:31.0),
                  // alignment: Alignment.center //try this to center the contents, try it inside the clumn if it doest=nt work try wrapo th column inside widget and try it ther too
          child: Column(
            children: [
              Image(image: AssetImage(imageUrl), height: 60.0,),
              SizedBox(height: 4.0,),
              Text(foodName, style: TextStyle(fontWeight: FontWeight.w600),),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.amber,size: 12.0,),
                          Icon(Icons.star, color: Colors.amber, size: 12.0,),
                          Icon(Icons.star, color: Colors.amber,size: 12.0,),
                          Icon(Icons.star, color: Colors.amber, size: 12.0,),
                          Icon(Icons.star, color: Colors.amber,size: 12.0,),
                        ],
                      ),
              Text('1\$ - 10\$', style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w600),),
            ],
          ),
        ),
      ),
    );
      }
}
