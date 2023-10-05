import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bublee.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://64.media.tumblr.com/255405c66025d6c619765840434aee83/0bf36d4a37f365ad-61/s128x128u_c1/9b61e9850faa9c8df7a0360eb8850217105cba70.jpg'),
          ),
        ),
        title: const Text('Amor'),
        //centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
                //return const MyMessageBubble();
              },
            )),

            //caja de texto
            const MesaggeFieldBox(),
            // const SizedBox(
            //   height: 10,
            //)
          ],
        ),
      ),
    );
  }
}
