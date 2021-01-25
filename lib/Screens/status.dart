import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  final image;
  StatusScreen({this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, right: 7),
          leading: Container(
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          ),
          title: Text(
            "Meu status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Adicionar status"),
        ),
        Container(
          color: Colors.grey[300],
          padding: EdgeInsets.all(13),
          child: Row(
            children: [Text("Última atualização")],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 5, right: 7),
            leading: Container(
              width: 70,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
            ),
            title: Text("Paulinho do DBA"),
            subtitle: Text("5 minutos atrás"),
          ),
        )
      ],
    );
  }
}
