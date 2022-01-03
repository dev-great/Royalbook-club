import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalbook_club/screens/settings_info.dart';

class AccBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Info(
          image: "assets/images/profile.png",
          name: "Marshal Great",
          email: "gmarshal070@gmail.com",
        ),
        SizedBox(
          height: 25,
        ),
        Settings_btn(
          iconsrc: "assets/images/icons/reward.svg",
          title: "Rewards",
          press: () {},
        ),
        Settings_btn(
          iconsrc: "assets/images/icons/setting.svg",
          title: "Edit Account",
          press: () {},
        ),
        Settings_btn(
          iconsrc: "assets/images/icons/faq.svg",
          title: "Help & FAQ's",
          press: () {},
        ),
        Settings_btn(
          iconsrc: "assets/images/icons/logout.svg",
          title: "Sign Out",
          press: () {},
        ),
      ],
    );
  }
}

class Settings_btn extends StatelessWidget {
  const Settings_btn({
    Key key,
    this.iconsrc,
    this.title,
    this.press,
  }) : super(key: key);
  final String iconsrc, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(iconsrc, color: Colors.black),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
