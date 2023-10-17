import 'dart:io';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_socialv/models/SVStoryModel.dart';
import 'package:prokit_socialv/screens/home/screens/SVStoryScreen.dart';
import 'package:prokit_socialv/utils/SVColors.dart';
import 'package:prokit_socialv/utils/SVCommon.dart';
import 'package:prokit_socialv/utils/SVConstants.dart';

class SVStoryComponent extends StatefulWidget {
  @override
  State<SVStoryComponent> createState() => _SVStoryComponentState();
}

class _SVStoryComponentState extends State<SVStoryComponent> {
  List<SVStoryModel> storyList = getStories();
  File? image;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: SVAppColorPrimary,
                  borderRadius: radius(SVAppCommonRadius),
                ),
                child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () async {
                      image = await svGetImageSource();
                    }),
              ),
              10.height,
              Text('Your Story', style: secondaryTextStyle(size: 12, color: context.iconColor, weight: FontWeight.w500)),
            ],
          ),
          HorizontalList(
            spacing: 16,
            itemCount: storyList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    child: Image.asset(
                      storyList[index].profileImage.validate(),
                      height: 58,
                      width: 58,
                      fit: BoxFit.cover,
                    ).cornerRadiusWithClipRRect(SVAppCommonRadius),
                    decoration: BoxDecoration(
                      border: Border.all(color: SVAppColorPrimary, width: 2),
                      borderRadius: radius(14),
                    ),
                  ).onTap(() {
                    SVStoryScreen(story: storyList[index]).launch(context);
                  }),
                  10.height,
                  Text(storyList[index].name.validate(), style: secondaryTextStyle(size: 12, color: context.iconColor, weight: FontWeight.w500)),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
