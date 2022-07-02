import 'package:flutter/material.dart';
import 'package:interview_task/src/views/utils/colors.dart';

class CoachTermsScreen extends StatelessWidget {
  const CoachTermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Scrollbar(
          child: ListView.separated(
              itemCount: 5,
              itemBuilder: (_, index) {
                return CoachTermsSingleCard(
                  index: index,
                );
              },
              separatorBuilder: (_, __) => const SizedBox(height: 6)),
        ),
      ),
    );
  }
}

class CoachTermsSingleCard extends StatelessWidget {
  const CoachTermsSingleCard({
    Key? key, required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: ColorUtils.whiteColor, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ]),
      child: ExpansionTile(
        initiallyExpanded: index == 0,
        title: const Text(
          'أي نوع من الأسئلة يتم وضعه هنا',
          textAlign: TextAlign.end,
          style: TextStyle(
              color: ColorUtils.blackColor,
              fontWeight: FontWeight.bold),
        ),
        leading: const CircleAvatar(
          radius: 15,
          backgroundColor: Color(0xFFF5F6FA),
          child: Icon(
            Icons.keyboard_arrow_down,
            color: ColorUtils.redColor,
            size: 18,
          ),
        ),
        trailing: const SizedBox(width: 0, height: 0,),
        childrenPadding: const EdgeInsets.only(bottom: 12),
        children: const [
          Text('أي نوع من الأسئلة يتم وضعه هناأي نوع من الأسئلة يتم')
        ],
      ),
    );
  }
}
