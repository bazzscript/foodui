import 'package:flutter/material.dart';
import 'package:foodui/widgets/food_detail.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      // drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        // elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, size: 27.0,),
          color: Colors.white,
        ),
        title: Text(
          'Home Screen',
          style: TextStyle(
              color: Colors.white, fontSize: 18.0, fontFamily: 'Fira Sans'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Badge(
              badgeColor: Colors.white,
            position: BadgePosition.bottomEnd(),
              badgeContent: Text('2',),
              alignment: Alignment.center,
              child: Icon(Icons.shopping_bag_outlined, size: 27.0,),
            ),
            color: Colors.white,
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              FoodDetail(
                imageUrl: 'assets/images/burger.png',
                foodName: 'BURGER',
              ),
              FoodDetail(
                imageUrl: 'assets/images/icecream.png',
                foodName: 'ICE CREAM',
              )
            ],
          ),
          Row(
            children: [
              FoodDetail(
                imageUrl: 'assets/images/chicken.png',
                foodName: 'CHICKEN',
              ),
              FoodDetail(
                imageUrl: 'assets/images/rice.png',
                foodName: 'RICE',
              )
            ],
          ),
          Row(
            children: [
              FoodDetail(
                imageUrl: 'assets/images/pizza.png',
                foodName: 'PIZZA',
              ),
              FoodDetail(
                imageUrl: 'assets/images/orangejuice.png',
                foodName: 'ORANGE JUICE',
              )
            ],
          ),
          Row(
            children: [
              FoodDetail(
                imageUrl: 'assets/images/juice1.png',
                foodName: 'BERRY JUICE',
              ),
              FoodDetail(
                imageUrl: 'assets/images/food1.png',
                foodName: 'MEATPIE',
              )
            ],
          ),
        ],
      ),
    );
  }
}
