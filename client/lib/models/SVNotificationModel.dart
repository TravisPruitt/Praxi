
import 'package:prokit_socialv/utils/SVConstants.dart';

class SVNotificationModel {
  String? name;
  String? secondName;
  String? profileImage;
  String? time;
  String? notificationType;
  String? postImage;
  bool? isOfficial;
  String? birthDate;

  SVNotificationModel({this.name, this.profileImage, this.time, this.notificationType, this.postImage, this.isOfficial, this.secondName, this.birthDate});
}

List<SVNotificationModel> getNotificationsToday() {
  List<SVNotificationModel> list = [];

  list.add(SVNotificationModel(
    name: 'Jane_Cooper',
    time: '2 min',
    profileImage: 'images/socialv/faces/face_1.png',
    notificationType: SVNotificationType.like,
    postImage: 'images/socialv/posts/post_one.png',
    isOfficial: false,
  ));
  list.add(SVNotificationModel(
    name: 'Bea_Mine',
    time: '2 min',
    profileImage: 'images/socialv/faces/face_2.png',
    notificationType: SVNotificationType.request,
    isOfficial: false,
  ));

  return list;
}

List<SVNotificationModel> getNotificationsThisMonth() {
  List<SVNotificationModel> list = [];

  list.add(SVNotificationModel(
    name: 'Anne Ortha',
    time: '2 week',
    profileImage: 'images/socialv/faces/face_3.png',
    notificationType: SVNotificationType.like,
    postImage: 'images/socialv/posts/post_two.png',
    isOfficial: true,
  ));
  list.add(SVNotificationModel(
    name: 'Anne Ortha',
    secondName: 'Dee Zynah',
    time: '2 week',
    profileImage: 'images/socialv/faces/face_1.png',
    notificationType: SVNotificationType.birthday,
    isOfficial: true,
    birthDate: '25 March',
  ));
  list.add(SVNotificationModel(
    name: 'Bea_Mine',
    time: '2 week',
    profileImage: 'images/socialv/faces/face_2.png',
    notificationType: SVNotificationType.request,
    isOfficial: false,
  ));
  list.add(SVNotificationModel(
    name: 'B. Homesoon',
    time: '2 week',
    profileImage: 'images/socialv/faces/face_4.png',
    notificationType: SVNotificationType.newPost,
    postImage: 'images/socialv/posts/post_three.png',
    isOfficial: true,
  ));

  return list;
}

List<SVNotificationModel> getNotificationsEarlier() {
  List<SVNotificationModel> list = [];

  list.add(SVNotificationModel(
    name: 'Anne Ortha',
    secondName: 'Dee Zynah',
    time: '2 week',
    profileImage: 'images/socialv/faces/face_5.png',
    notificationType: SVNotificationType.birthday,
    isOfficial: true,
    birthDate: '05 Feb',
  ));
  return list;
}
