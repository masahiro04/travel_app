import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/User.dart';
import 'package:travel_app/screens/components/section_title.dart';
import 'package:travel_app/size_config.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Top Travelers on Spark",
          press: () {},
        ),
        VerticalSpacing(of: 20),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding)),
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [kDefaultShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                topTravelers.length,
                (index) => UserCard(
                  user: topTravelers[index],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({Key key, @required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            height: getProportionateScreenWidth(55),
            width: getProportionateScreenWidth(55),
            fit: BoxFit.cover,
          ),
        ),
        VerticalSpacing(of: 10),
        Text(
          user.name,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
