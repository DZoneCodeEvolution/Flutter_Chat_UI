import 'package:chat_ui/models/user_model.dart';


class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({

    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,

});
}

final User currentUser = User(
  id: 0,
  name: 'Dhiraj',
  imageUrl: 'assets/images/grey1.png',
);

final User pradip = User(
  id: 1,
  name: 'Pradip',
  imageUrl: 'assets/images/grey2.jpg',
);
final User ramesh = User(
  id: 2,
  name: 'Ramesh',
  imageUrl: 'assets/images/grey3.jpg',
);
final User suresh = User(
  id: 3,
  name: 'Suresh',
  imageUrl: 'assets/images/grey4.jpg',
);
final User mayyur = User(
  id: 4,
  name: 'Mayyur',
  imageUrl: 'assets/images/grey5.jpg',
);
final User dhiru = User(
  id: 5,
  name: 'Dhiru',
  imageUrl: 'assets/images/grey6.jpg',
);
final User ankit = User(
  id: 6,
  name: 'Ankit',
  imageUrl: 'assets/images/grey7.jpg',
);
final User lakhu = User(
  id: 7,
  name: 'Laxman',
  imageUrl: 'assets/images/grey8.jpg',
);

List<User> favorites = [mayyur,ramesh,pradip,lakhu,ankit];

List<Message> chats = [
  Message(
    sender: dhiru,
    time: '5:30 PM',
    text: 'Hey ,How\'s it going ? what did you do today ?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: lakhu,
    time: '6:30 PM',
    text: 'Hey ,How\'s it going ? what did you do today ?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mayyur,
    time: '7:30 PM',
    text: 'Hey ,How\'s it going ? what did you do today ?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: ankit,
    time: '8:30 PM',
    text: 'Hey ,How\'s it going ? what did you do today ?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: suresh,
    time: '9:30 PM',
    text: 'Hey ,How\'s it going ? what did you do today ?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '10:30 PM',
    text: 'Hey ,How\'s it going ? what did you do today ?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '11:30 PM',
    text: 'Hey ,How\'s it going ? what did you do today ?',
    isLiked: true,
    unread: true,
  ),
];