import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => new Stack(
            alignment: Alignment.bottomRight,
            children: <Widget>[
              Container(
                width: 75.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://pbs.twimg.com/profile_images/1358002900761538560/VBQi0Z65_400x400.jpg")),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 6.0),
              ),
              index == 0
                  ? Positioned(
                      right: 10.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 10.0,
                        child: Icon(
                          Icons.add,
                          size: 14.0,
                          color: Colors.white,
                        ),
                      ))
                  : Container()
            ],
          ),
        ),
      ),
    );
  }
}
