import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(43, 8, 8, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Профиль",
            style: TextStyle(fontFamily: 'RuslanDisplay', fontSize: 23)),
        backgroundColor: const Color.fromRGBO(125, 0, 0, 1),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage("assets/images/default.png"),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text("Имя пользователя",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22
                ),),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                onPressed: () {  },
                child: Text("Выйти",
                style: TextStyle(
                  fontSize: 17
                ),),
              )
            )
          ],
        ),
      ),
    );
  }
}