import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/src/views/utils/colors.dart';

class ExhibitionScreen extends StatelessWidget {
  const ExhibitionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(height: 8),
          const Text('صور المدرب', style: TextStyle(
            color: ColorUtils.blackColor,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 8),
          SizedBox(
            height: 110,
            child: Scrollbar(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                primary: false,
                shrinkWrap: true,
                itemCount: 6,
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 105,
                    width: 105,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/lifting-weights.png'),
                          fit: BoxFit.cover
                        )
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotsIndicator(
                dotsCount: 5,
                position: 2,
                decorator: DotsDecorator(
                  size: const Size.square(6.0),
                  activeSize: const Size(14.0, 6.0),
                  color: const Color(0xFFEBEDF0),
                  activeColor: ColorUtils.redColor,
                  spacing: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text('نتائج المتدربين', style: TextStyle(
              color: ColorUtils.blackColor,
              fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 8),
          SizedBox(
            height: 110,
            child: Scrollbar(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                primary: false,
                shrinkWrap: true,
                itemCount: 6,
                reverse: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 105,
                    width: 105,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 105,
                          width: 52,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5)),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/boxer.jpg'),
                                  fit: BoxFit.fitHeight)),
                          alignment: Alignment.bottomCenter,
                          child: const Text(
                            'بعد',
                            style: TextStyle(
                                color: ColorUtils.whiteColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: 105, width: 52,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/mc.jpg'),
                              fit: BoxFit.fitHeight
                            )
                          ),
                          alignment: Alignment.bottomCenter,
                          child: const Text('قبل', style: TextStyle(
                            color: ColorUtils.whiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotsIndicator(
                dotsCount: 5,
                position: 2,
                decorator: DotsDecorator(
                  size: const Size.square(6.0),
                  activeSize: const Size(14.0, 6.0),
                  color: const Color(0xFFEBEDF0),
                  activeColor: ColorUtils.redColor,
                  spacing: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
