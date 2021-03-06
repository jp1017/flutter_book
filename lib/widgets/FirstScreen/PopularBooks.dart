import 'package:flutter/material.dart';
import 'package:flutter_book/widgets/common/CommonTitle.dart';
import 'package:flutter_book/widgets/common/CommonBookCard.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_book/routers/application.dart';
import 'package:flutter_book/helpers/fluro_convert_util.dart';

class PopularBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 32.0,
        ),
        CommonTitle(
          title: '最受欢迎',
          onTap: () {
            Application.router.navigateTo(
              context,
              "/detail?title=${FluroConvertUtils.fluroCnParamsEncode('最受欢迎')}",
              transition: TransitionType.native,
              // transitionDuration: const Duration(milliseconds: 300),
            );
          },
        ),
        SizedBox(
          height: 32.0,
        ),
        Container(
          height: 140.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (int index) {
              return Container(
                  margin: EdgeInsets.only(right: 16.0),
                  child: CommonBookCard());
            }),
          ),
        )
      ],
    );
  }
}
