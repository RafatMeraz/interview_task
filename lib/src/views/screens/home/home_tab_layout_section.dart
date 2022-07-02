import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'coach_terms_screen.dart';
import 'exhibition_screen.dart';

class HomeTabLayoutSection extends StatelessWidget {
  const HomeTabLayoutSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            TabBar(
              labelColor: ColorUtils.redColor,
              unselectedLabelColor: ColorUtils.greyColor,
              indicatorColor: ColorUtils.redColor,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('شروط المدرب'),
                      SizedBox(width: 8),
                      ImageIcon(AssetImage('assets/images/explain-icon.png'))
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('المعرض'),
                      SizedBox(width: 8),
                      ImageIcon(AssetImage('assets/images/images-icon.png')),
                    ],
                  ),
                )
              ],
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -2.6, 0.0),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xFFEBEDF0),
                    width: 0.5,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 355,
          child: TabBarView(children: [
            CoachTermsScreen(),
            ExhibitionScreen(),
          ]),
        ),
      ],
    );
  }
}
