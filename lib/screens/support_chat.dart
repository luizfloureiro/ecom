import 'package:flutter_chat/chatData.dart';
import 'package:flutter_chat/chatWidget.dart';
import 'package:flutter/material.dart';


class SupportChatPage extends StatefulWidget {
  @override
  _SupportChatPageState createState() => _SupportChatPageState();
}

class _SupportChatPageState extends State<SupportChatPage> {
  @override
  void initState() {
    super.initState();
    ChatData.init("Suporte", context);
  }

  // Constroi a tela do widget, setando a tela inicial do chat do suporte
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ChatWidget.getAppBar(),
        backgroundColor: Colors.white,
        body: ChatWidget.widgetWelcomeScreen(context));
  }
}
