import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final title;
  final image;
  final message;

  ChatScreen({this.image, this.title, this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(top: 8),
            child: ListTile(
              leading: Container(
                width: 70,
                height: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
              ),
              title: Text('Cara cadê minha feature?'),
              trailing: Column(
                children: [
                  Text('12:00'),
                  Container(
                    width: 22,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
