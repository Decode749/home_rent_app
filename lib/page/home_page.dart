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

  int current = 0;

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
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
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
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                      filled: true,
                      fillColor: kWhiteF7,
                    ),
                  )),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                  Container(
                    height: 49,
                    width: 49,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius10),
                      gradient: kLinearGradientBlue,
                    ),
                    child: SvgPicture.asset('assets/icon_filter.svg'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            SizedBox(
              width: double.infinity,
              height: 34,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: catagories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? kPadding20 : 12,
                        right: index == catagories.length - 1 ? kPadding20 : 0,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16,
                      ),
                      height: 34,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0,
                            offset: const Offset(0, 18),
                            blurRadius: 18,
                            color: current == index
                                ? kBlue.withOpacity(0.1)
                                : kBlue.withOpacity(0),
                          ),
                        ],
                        gradient: current == index
                            ? kLinearGradientBlue
                            : kLinearGradientWhite,
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                      ),
                      child: Center(
                        child: Text(
                          catagories[index],
                          style: kRalewayMedium.copyWith(
                            color: current == index ? kWhite : kGrey85,
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPadding20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Near from you',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  Text(
                    'See more',
                    style: kRalewayRegular.copyWith(
                      color: kGrey85,
                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            SizedBox(
              height: 272,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailPage(),
                            ),
                          )),
                      child: Container(
                        height: 272,
                        width: 222,
                        margin: EdgeInsets.only(
                          left: kPadding20,
                          right: index == 5 - 1 ? kPadding20 : 0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius20),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 18),
                              blurRadius: 18,
                              color: kBlack.withOpacity(0.1),
                            )
                          ],
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/2581922/pexels-photo-2581922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                          ),
                        ),
                        child: const Stack(
                          children: [
                            
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
