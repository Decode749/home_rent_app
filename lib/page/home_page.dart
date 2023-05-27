import 'package:flutter/material.dart';

import '../app_style.dart';
import '../size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> catagories = ["House", "Apartment", "Villa", "Cottage", "Hotel"];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPadding20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location',
                        style: kRalewayRegular.copyWith(
                          color: kGrey83,
                          fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 0.5,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
