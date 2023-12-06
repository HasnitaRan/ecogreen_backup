import 'package:flutter/material.dart';

void main() {
  runApp(const ChatbotPage());
}

class ChatbotPage extends StatelessWidget {
  const ChatbotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatbotScreen(),
    );
  }
}

class ChatbotScreen extends StatefulWidget {
  const ChatbotScreen({Key? key}) : super(key: key);

  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> _chatMessages = [];

  void _sendMessage(String message) {
    setState(() {
      _chatMessages.add({'sender': 'You', 'message': message});
    });

    String botResponse = _getBotResponse(message);

    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _chatMessages.add({'sender': 'Chatbot', 'message': botResponse});
      });
    });
    FocusScope.of(context).unfocus();
  }

  String _getBotResponse(String message) {
    if (message.toLowerCase().contains('halo') ||
        message.toLowerCase().contains('hai')) {
      return 'Halo! Ada yang bisa saya bantu?';
    } else if (message.toLowerCase().contains('terima kasih')) {
      return 'Sama-sama, senang bisa membantu!';
    } else if (message.toLowerCase().contains('selamat pagi')) {
      return 'Selamat pagi! Bagaimana kabarmu hari ini?';
    } else {
      return 'Maaf, saya tidak mengerti pertanyaan Anda.';
    }
  }

  Widget _getSenderIcon(String sender) {
    if (sender == 'You') {
      return Image.asset(
        'lib/images/userlogo.png',
        width: 48,
        height: 48,
      );
    } else if (sender == 'Chatbot') {
      return Image.asset(
        'lib/images/wedec-head.png',
        width: 48,
        height: 48,
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey[900],
        ),
        title: Center(
          child: Text(
            '',
            style: TextStyle(color: Colors.grey[900]),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/bg-waste.png'),
            fit: BoxFit
                .cover, // Menggunakan BoxFit.cover agar gambarnya fill ke layar
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.transparent,
                child: ListView.builder(
                  itemCount: _chatMessages.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    String sender = _chatMessages[index]['sender'];
                    String message = _chatMessages[index]['message'];

                    return Align(
                      alignment: sender == 'You'
                          ? Alignment.topRight
                          : Alignment.topLeft,
                      child: Row(
                        children: [
                          _getSenderIcon(sender),
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            decoration: BoxDecoration(
                              color: sender == 'You'
                                  ? Colors.white.withOpacity(
                                      0.8) // Setel warna dengan transparansi
                                  : Colors.green.withOpacity(
                                      0.8), // Sesuaikan dengan warna latar belakang Anda
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(8),
                            margin: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            child: Text(
                              message,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton(
                    onPressed: () {
                      String message = _messageController.text.trim();
                      if (message.isNotEmpty) {
                        _sendMessage(message);
                        _messageController.clear();
                      }
                    },
                    child: const Icon(Icons.send),
                    backgroundColor: Colors.green.withOpacity(0.8),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
