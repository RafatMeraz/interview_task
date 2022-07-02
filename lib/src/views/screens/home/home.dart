import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'home_intro_section.dart';
import 'home_review_section.dart';
import 'home_tab_layout_section.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorUtils.whiteColor,
          title: const Text(
            'عبد الرحمن عبيد',
            style: TextStyle(color: ColorUtils.softBlackColor),
          ),
          centerTitle: true,
          elevation: 0,
          actions: const [
            ImageIcon(
              AssetImage('assets/images/back-arrow-icon.png'),
              color: Color(0xFF25272A),
            ),
            SizedBox(width: 16)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HomeIntroSection(),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: HomeTabLayoutSection(),
              ),
              Container(
                color: const Color(0xFFF9F9F9),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: HomeReviewSection(),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                'خطط الاشتراك',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorUtils.blackColor),
                              ),
                              Container(
                                color: ColorUtils.redColor,
                                width: 20,
                                height: 2,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color(0xffDD0539),
                                Color(0xffFF83A1),
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              RichText(
                                text: const TextSpan(
                                    text: 'شهور',
                                    style: TextStyle(
                                        color: ColorUtils.whiteColor, fontSize: 11),
                                    children: [
                                      TextSpan(text: ' '),
                                    ]),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                '\$ 16.49',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorUtils.whiteColor,
                                    fontSize: 12),
                              ),
                              const SizedBox(height: 8),
                              RichText(
                                text: const TextSpan(
                                    text: '\$ 5.50',
                                    style: TextStyle(color: ColorUtils.whiteColor),
                                    children: [
                                      TextSpan(text: ' / '),
                                      TextSpan(text: 'شهرياً'),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: ColorUtils.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              RichText(
                                text: const TextSpan(
                                    text: 'شهور',
                                    style: TextStyle(
                                        color: ColorUtils.blackColor, fontSize: 11),
                                    children: [
                                      TextSpan(text: ' '),
                                    ]),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                '\$ 16.49',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorUtils.blackColor,
                                    fontSize: 12),
                              ),
                              const SizedBox(height: 8),
                              RichText(
                                text: const TextSpan(
                                    text: '\$ 5.50',
                                    style: TextStyle(color: ColorUtils.blackColor),
                                    children: [
                                      TextSpan(text: ' / '),
                                      TextSpan(text: 'شهرياً'),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: ColorUtils.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ]
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: ColorUtils.blackColor,
                            padding: const EdgeInsets.symmetric(vertical: 10)),
                        onPressed: () {},
                        child: const Text('اشتراك', style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4,
                        ),),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}