import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: ColorUtils.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'أمس',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'أمس',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: ColorUtils.blackColor),
                        ),
                        Row(
                          children: [
                            const Text(
                              '4.8',
                              style: TextStyle(
                                  color: ColorUtils.greyColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.star,
                              color: Colors.grey[300],
                              size: 18,
                            ),
                            const Icon(Icons.star,
                                color: ColorUtils.redColor, size: 18),
                            const Icon(Icons.star,
                                color: ColorUtils.redColor, size: 18),
                            const Icon(Icons.star,
                                color: ColorUtils.redColor, size: 18),
                            const Icon(Icons.star,
                                color: ColorUtils.redColor, size: 18)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 8),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/user-male.png'),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم إدخال بعض النوادر',
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 12, color: ColorUtils.greyColor),
          )
        ],
      ),
    );
  }
}
