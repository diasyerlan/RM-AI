import 'dart:io';
import 'dart:typed_data';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';

class AI extends StatefulWidget {
  AI({super.key});

  @override
  State<AI> createState() => _AIState();
}

class _AIState extends State<AI> {
  final Gemini gemini = Gemini.instance;
  ChatUser currentUser = ChatUser(id: '0', firstName: 'User');

  ChatUser geminiUser =
      ChatUser(id: '1', firstName: 'HR Bot', profileImage: 'assets/3.png');

  List<ChatMessage> messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Dream Job Ai",
            style: TextStyle(fontFamily: 'Aldrich', fontSize: 32),
          ),
        ),
        body: _buildUI());
  }

  Widget _buildUI() {
    return DashChat(
        inputOptions: InputOptions(trailing: [
          IconButton(onPressed: _sendMediaMessage, icon: Icon(Icons.image))
        ]),
        currentUser: currentUser,
        onSend: _sendMessage,
        messages: messages);
  }

  void _sendMessage(ChatMessage chatMessage) {
    setState(() {
      messages = [chatMessage, ...messages];
    });
    try {
      String question = chatMessage.text;
      List<Uint8List>? images;
      if (chatMessage.medias?.isNotEmpty ?? false) {
        images = [File(chatMessage.medias!.first.url).readAsBytesSync()];
      }
      gemini.streamGenerateContent(question).listen((event) {
        ChatMessage? lastMessage = messages.firstOrNull;
        if (lastMessage != null && lastMessage.user == geminiUser) {
          lastMessage = messages.removeAt(0);
          String response = event.content?.parts?.fold(
                  "", (previous, current) => "$previous ${current.text}") ??
              "";
          lastMessage.text += response;
          setState(() {
            messages = [lastMessage!, ...messages];
          });
        } else {
          String response = event.content?.parts
                  ?.fold("", (previous, current) => "$previous${current.text}") ??
              "";
          ChatMessage message = ChatMessage(
              user: geminiUser, createdAt: DateTime.now(), text: response);
          setState(() {
            messages = [message, ...messages];
          });
        }
      });
    } catch (e) {
      print(e);
    }
  }

  void _sendMediaMessage() async {
    ImagePicker picker = ImagePicker();
    XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      ChatMessage message = ChatMessage(
          user: currentUser,
          createdAt: DateTime.now(),
          text: 'Descrive the picture: ',
          medias: [
            ChatMedia(url: file.path, fileName: '', type: MediaType.image)
          ]);
      _sendMessage(message);
    }
  }
}
