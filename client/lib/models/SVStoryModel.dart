class SVStoryModel {
  String? name;
  String? profileImage;
  List<String>? storyImages;
  String? time;
  bool? like;

  SVStoryModel({this.name, this.profileImage, this.storyImages, this.time, this.like});
}

List<SVStoryModel> getStories() {
  List<SVStoryModel> list = [];

  list.add(SVStoryModel(name: 'Iana', profileImage: 'images/socialv/faces/face_1.png', time: '4m', like: false));
  list.add(SVStoryModel(name: 'Allie', profileImage: 'images/socialv/faces/face_2.png', time: '4m', like: false));
  list.add(SVStoryModel(name: 'Manny', profileImage: 'images/socialv/faces/face_3.png', time: '4m', like: false));
  list.add(SVStoryModel(name: 'Isabelle', profileImage: 'images/socialv/faces/face_4.png', time: '4m', like: false));
  list.add(SVStoryModel(name: 'Jenny Wilson', profileImage: 'images/socialv/faces/face_5.png', time: '4m', like: false));

  return list;
}
