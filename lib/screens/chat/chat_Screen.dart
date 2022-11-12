import 'package:flutter/material.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'message_bubble.dart';
import 'package:expandable_text/expandable_text.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _messageController = TextEditingController();
  bool _isEmoji = false;
  FocusNode focus = FocusNode();
  List<Widget> messageBubbles = [
    MessageBubble(isMe: true),
    MessageBubble(
      isMe: false,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Reunion Manali",
            style:
                GoogleFonts.roboto(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        backgroundColor: Color.fromRGBO(240, 148, 85, 1),
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) {
              print(value);
            },
            // position: PopupMenuPosition.under,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text(
                  "Group Info",
                  style: TextStyle(
                    color: Color(0xdd4E4E4E),
                  ),
                ),
              ),
              // popupmenu item 2
              PopupMenuItem(
                value: 2,
                child: Text(
                  "Notifications",
                  style: TextStyle(
                    color: Color(0xdd4E4E4E),
                  ),
                ),
              ),
              PopupMenuItem(
                value: 3,
                child: Text(
                  "Clear Chat",
                  style: TextStyle(
                    color: Color(0xdd4E4E4E),
                  ),
                ),
              ),
            ],
            color: Colors.white, padding: EdgeInsets.all(0),
          ),
        ],
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: WillPopScope(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    alignment: Alignment.bottomRight,
                    image: AssetImage(
                      'images/chat.png',
                    ),
                    scale: 1.7,
                    opacity: 0.05,
                  ),
                ),
                child: ListView(
                  reverse: true,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  children: messageBubbles,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    offset: const Offset(
                      0,
                      0,
                    ),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                ],
              ),
              margin: EdgeInsets.only(bottom: 30),
              height: 50,
              width: 350,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isEmoji = !_isEmoji;
                        FocusScope.of(context).unfocus();
                        focus.canRequestFocus = true;
                      });
                    },
                    child: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Color(0xff7F7F7F),
                      size: 32,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 3),
                      child: AutoSizeTextField(
                        onTap: () {
                          setState(() {
                            _isEmoji = false;
                          });
                        },
                        autofocus: false,
                        controller: _messageController,
                        style: TextStyle(fontSize: 16),
                        minFontSize: 15,
                        minLines: 1,
                        maxLines: 10,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: new Icon(Icons.photo),
                                  title: new Text('Photo'),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: new Icon(Icons.music_note),
                                  title: new Text('Music'),
                                  onTap: () {
                                    //   Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: new Icon(Icons.videocam),
                                  title: new Text('Video'),
                                  onTap: () {
                                    //  Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: new Icon(Icons.share),
                                  title: new Text('Share'),
                                  onTap: () {
                                    // Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: new Icon(Icons.file_copy_rounded),
                                  title: new Text('Files'),
                                  onTap: () {
                                    // Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    child: Icon(
                      Icons.attach_file_outlined,
                      color: Color(0xff7F7F7F),
                      size: 32,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _messageController.clear();
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xffED7F2C),
                      radius: 22,
                      child: Center(
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _isEmoji,
              child: SizedBox(
                height: 250,
                child: EmojiPicker(
                  onEmojiSelected: (category, emoji) {},
                  onBackspacePressed: () {
                    // print(_messageController.text.length);
                    _messageController.text = _messageController.text
                        .substring(0, _messageController.text.length - 2);
                  },
                  textEditingController:
                      _messageController, // pass here the same [TextEditingController] that is connected to your input field, usually a [TextFormField]
                  config: const Config(
                    columns: 7,
                    emojiSizeMax: 32 * 1.0,
                    verticalSpacing: 0,
                    horizontalSpacing: 0,
                    gridPadding: EdgeInsets.zero,
                    initCategory: Category.SMILEYS,
                    bgColor: Color(0xFFF2F2F2),
                    indicatorColor: Colors.grey,
                    iconColor: Colors.grey,
                    iconColorSelected: Colors.grey,
                    backspaceColor: Colors.grey,
                    skinToneDialogBgColor: Colors.white,
                    skinToneIndicatorColor: Colors.grey,
                    enableSkinTones: true,
                    showRecentsTab: true,
                    recentsLimit: 28,
                    noRecents: Text(
                      'No Recents',
                      style: TextStyle(fontSize: 20, color: Colors.black26),
                      textAlign: TextAlign.center,
                    ), // Needs to be const Widget
                    loadingIndicator:
                        SizedBox.shrink(), // Needs to be const Widget
                    tabIndicatorAnimDuration: kTabScrollDuration,
                    categoryIcons: CategoryIcons(),
                    buttonMode: ButtonMode.MATERIAL,
                  ),
                ),
              ),
            ),
          ],
        ),
        onWillPop: () {
          if (_isEmoji) {
            setState(() {
              _isEmoji = false;
            });
          } else {
            Navigator.pop(context);
          }
          return Future.value(false);
        },
      ),
    );
  }
}
