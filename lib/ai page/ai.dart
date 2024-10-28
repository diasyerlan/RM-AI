import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class AI extends StatefulWidget {
  AI({super.key});

  @override
  State<AI> createState() => _AIState();
}

class _AIState extends State<AI> {
  final Gemini gemini = Gemini.instance;
  ChatUser currentUser = ChatUser(id: '0', firstName: 'User');

  ChatUser geminiUser =
      ChatUser(id: '1', firstName: 'Gemini', profileImage: 'assets/3.png');

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
        currentUser: currentUser, onSend: _sendMessage, messages: messages);
  }

  void _sendMessage(ChatMessage chatMessage) {
    setState(() {
      messages = [chatMessage, ...messages];
    });
  }
}
