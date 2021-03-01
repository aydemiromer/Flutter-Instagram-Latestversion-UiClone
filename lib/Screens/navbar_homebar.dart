import 'package:flutter/material.dart';
import 'package:instagram/Models/list.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: SizedBox(
              height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
          backgroundColor: Colors.white,
          actions: [
            SizedBox(
              width: 40.0,
              child: Image(image: AssetImage('assets/images/add.jpeg')),
            ),
            SizedBox(
              width: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.0,
              width: 40.0,
              child: Image(image: AssetImage('assets/images/message.jpeg')),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 50.0,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home),
                Icon(Icons.search),
                SizedBox(
                  height: 50.0,
                  width: 40.0,
                  child: Image(image: AssetImage('assets/images/movie.jpeg')),
                ),
                SizedBox(
                  height: 50.0,
                  width: 40.0,
                  child:
                      Image(image: AssetImage('assets/images/shopping.jpeg')),
                ),
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://pbs.twimg.com/profile_images/1366346122910969856/1204kKZz_400x400.jpg")),
                  ),
                ),
                // Icon(Icons.account_circle_outlined),
              ],
            ),
          ),
        ),
        body: InstaList());
  }
}
