import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/src/widgets/my_app_bar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: MyAppBar(title: 'Your', subTitle: 'Profile'),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      body: Container(),
    );
  }
}
