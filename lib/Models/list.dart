import 'package:flutter/material.dart';
import 'package:instagram/Screens/stories.dart';

class InstaList extends StatefulWidget {
  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;

    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => index == 0
            ? SizedBox(
                child: Stories(),
                height: deviceSize.height * 0.15,
              )
            : Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                          "https://pbs.twimg.com/profile_images/1366346122910969856/1204kKZz_400x400.jpg")),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "aydemiromerr",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: null,
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Image.network(
                        "https://pbs.twimg.com/profile_images/1366346122910969856/1204kKZz_400x400.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(isPressed
                                    ? Icons.favorite
                                    : Icons.favorite_border),
                                color: isPressed ? Colors.red : Colors.black,
                                onPressed: () {
                                  setState(() {
                                    isPressed = !isPressed;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              SizedBox(
                                height: 25.0,
                                width: 40.0,
                                child: Image(
                                    image: AssetImage(
                                        'assets/images/comment.jpeg')),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              SizedBox(
                                height: 25.0,
                                width: 40.0,
                                child: Image(
                                    image:
                                        AssetImage('assets/images/send.jpeg')),
                              ),
                            ],
                          ),
                          Icon(Icons.bookmark_border)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Liked by aydemiromerr, asd and 50 others",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://pbs.twimg.com/profile_images/1366346122910969856/1204kKZz_400x400.jpg")),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Add a comment...",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.add_circle_outline,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("24 Minutes Ago",
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
