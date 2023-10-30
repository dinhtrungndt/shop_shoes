import 'package:flutter/material.dart';

class ChatAI extends StatefulWidget {
  const ChatAI({Key? key}) : super(key: key);

  @override
  _ChatAIState createState() => _ChatAIState();
}

class _ChatAIState extends State<ChatAI> {
  final List<Message> _messages = <Message>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat AI'),
        backgroundColor: const Color(0xFF4DD0E1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(_messages[index]);
              },
            ),
          ),
          _buildMessageComposer(),
        ],
      ),
    );
  }

  Widget _buildMessage(Message message) {
    return Align(
      alignment: message.isBot ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: message.isBot ? Colors.white : const Color(0xFF4DD0E1),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          message.text,
          style: TextStyle(color: message.isBot ? Colors.black : Colors.white),
        ),
      ),
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              textInputAction: TextInputAction.send,
              onSubmitted: (text) {
                _sendMessage(text, isBot: false);
              },
              decoration: const InputDecoration.collapsed(
                hintText: "Send a message...",
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // Simulate bot's response
              _sendMessage("Hi there! I'm your AI chatbot.", isBot: true);
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage(String text, {bool isBot = false}) {
    setState(() {
      _messages.add(Message(text, isBot));
    });
  }
}

class Message {
  final String text;
  final bool isBot;

  Message(this.text, this.isBot);
}
