import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_socialv/utils/SVConstants.dart';

class SVProfileHeaderComponent extends StatelessWidget {
  const SVProfileHeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'images/socialv/backgroundImage.png',
                width: context.width(),
                height: 130,
                fit: BoxFit.cover,
              ).cornerRadiusWithClipRRectOnly(topLeft: SVAppCommonRadius.toInt(), topRight: SVAppCommonRadius.toInt()),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2), borderRadius: radius(18)),
                  child: Image.asset('images/socialv/faces/face_5.png', height: 88, width: 88, fit: BoxFit.cover).cornerRadiusWithClipRRect(SVAppCommonRadius),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
