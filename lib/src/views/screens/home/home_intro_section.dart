import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'round_social_icon_button.dart';

class HomeIntroSection extends StatelessWidget {
  const HomeIntroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: ColorUtils.whiteColor,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                    color: ColorUtils.redColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: ColorUtils.whiteColor,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '4.2',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: ColorUtils.whiteColor),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Column(
                          children: [
                            const Text(
                              'عبد الرحمن عبيد',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorUtils.softBlackColor),
                            ),
                            Row(
                              children: const [
                                Text(
                                  'السعودية',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorUtils.greyColor),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: CircleAvatar(
                                    radius: 2,
                                    backgroundColor: ColorUtils.greyColor,
                                  ),
                                ),
                                Text(
                                  'الرياض',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: ColorUtils.greyColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/boxer-image.png'))),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Row(
                children: [
                  RoundSocialIconButton(
                    onTap: () {},
                    image: 'assets/images/snapchat.png',
                  ),
                  const SizedBox(width: 4),
                  RoundSocialIconButton(
                    onTap: () {},
                    image: 'assets/images/instagram.png',
                  ),
                  const SizedBox(width: 4),
                  RoundSocialIconButton(
                    onTap: () {},
                    image: 'assets/images/twitter.png',
                  ),
                  const SizedBox(width: 4),
                  RoundSocialIconButton(
                    onTap: () {},
                    image: 'assets/images/facebook.png',
                  ),
                ],
              ),
              const Spacer(),
              const Chip(
                label: Text(
                  'رفع أثقال',
                  style:
                  TextStyle(color: Color(0xFFDD0539), fontSize: 12),
                ),
                backgroundColor: Color(0xFFFEF5F7),
              ),
            ],
          ),
          const SizedBox(height: 8),
          ExpandText(
            'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر ',
            maxLines: 2,
            overflow: TextOverflow.clip,
            style: const TextStyle(
                fontSize: 12, color: ColorUtils.greyColor),
            indicatorBuilder: (context, onTap, expanded) => InkWell(
              onTap: onTap,
              child: const Chip(
                label: Text('عرض الكل'),
                backgroundColor: ColorUtils.whiteColor,
                elevation: 0.8,
                side: BorderSide(color: Color(0xFFF5F6FA), width: 0.1),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/exercise.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.only(right: 8, top: 8),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[
                          Color(0xffDD0539),
                          Color(0xffF5B3C3),
                        ],
                      )),
                  child: const Text(
                    'ملصق جانبي',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: ColorUtils.whiteColor),
                  ),
                ),
              ),
              Positioned(
                  left: 16,
                  bottom: 16,
                  child: Image.asset(
                    'assets/images/play-icon.png',
                    width: 40,
                    height: 40,
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
