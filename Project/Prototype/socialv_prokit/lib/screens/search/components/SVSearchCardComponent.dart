import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_socialv/models/SVSearchModel.dart';
import 'package:prokit_socialv/utils/SVCommon.dart';

class SVSearchCardComponent extends StatelessWidget {
  final SVSearchModel element;

  SVSearchCardComponent({required this.element});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(element.profileImage.validate(), height: 56, width: 56, fit: BoxFit.cover).cornerRadiusWithClipRRect(8),
            20.width,
            Column(
              children: [
                Row(
                  children: [
                    Text(element.name.validate(), style: boldTextStyle()),
                    6.width,
                    element.isOfficialAccount.validate()
                        ? Image.asset('images/socialv/icons/ic_TickSquare.png', height: 14, width: 14, fit: BoxFit.cover)
                        : Offstage(),
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
                6.height,
                Text(element.subTitle.validate(), style: secondaryTextStyle(color: svGetBodyColor())),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
        ),
        Image.asset(
          'images/socialv/icons/ic_CloseSquare.png',
          height: 20,
          width: 20,
          fit: BoxFit.cover,
          color: context.iconColor,
        ),
      ],
    );
  }
}
