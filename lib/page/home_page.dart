import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                      ),
                      Row(
                        children: [
                          Text(
                            'Jakarta',
                            style: kRalewayMedium.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 5,
                              color: kBlack,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 0.5,
                          ),
                          SvgPicture.asset('assets/icon_dropdown.svg')
                        ],
                      )
                    ],
                  ),
                  SvgPicture.asset('assets/icon_notification.svg')
                ],
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: kRalewayRegular.copyWith(
                        color: kBlack,
                        fontSize: SizeConfig.blockSizeHorizontal!*3,
                      ),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: kPadding16,
                        ),
                        prefixIcon: SvgPicture.asset('assets/icon_search.svg'),
                        hintText: 'Search address , or address near you',
                        border: kInputBorder,
                        errorBorder: kInputBorder,
                        disabledBorder: kInputBorder,
                        focusedBorder: kInputBorder,
                        enabledBorder: kInputBorder,
                        hintStyle: kRalewayRegular.copyWith(
                          color: kGrey85,
                          fontSize: SizeConfig.blockSizeHorizontal!*3,
                        ),
                        filled: true,
                        fillColor: kWhiteF7,
                      ),
                    )
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
