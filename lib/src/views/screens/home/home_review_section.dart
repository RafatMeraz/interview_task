import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'user_review_card.dart';

class HomeReviewSection extends StatelessWidget {
  const HomeReviewSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                'عرض جميع الآراء (24)',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.greyColor),
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'آراء المشتركين',
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
        const SizedBox(height: 16),
        SizedBox(
          height: 150,
          child: Scrollbar(
            child: ListView.separated(
              shrinkWrap: true,
              primary: false,
              reverse: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, __) => const UserReviewCard(),
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemCount: 5,
            ),
          ),
        ),
      ],
    );
  }
}
