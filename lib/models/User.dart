import 'package:flutter/cupertino.dart';

class User {
  final String name, image;

  User({
    @required this.name,
    @required this.image,
  });
}

List<User> topTravelers = [user1, user2, user3, user4];

User user1 = User(name: "James", image: "assets/images/james.png");
User user2 = User(name: "John", image: "assets/images/John.png");
User user3 = User(name: "Marry", image: "assets/images/marry.png");
User user4 = User(name: "Rosy", image: "assets/images/rosy.png");
