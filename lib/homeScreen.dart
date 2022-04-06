import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:verstka/demon_icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Киномонстр", style: TextStyle( fontFamily: 'RuslanDisplay', fontSize: 23 )),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(125, 0, 0, 1),
          leading: IconButton(onPressed: () => {}, icon: const Icon(Icons.info_outline)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          backgroundColor: const Color.fromRGBO(125, 0, 0, 1),
          selectedItemColor: Colors.yellow[300],
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Тренды'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Поиск'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Избранное'),
            BottomNavigationBarItem(icon: Icon(Demon.vector), label: 'Профиль'),
          ],
        ),
        body: Container(
          color: const Color.fromRGBO(43, 8, 8, 1),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
              itemCount: 6, //films.length
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    height: 120,
                    //color: Colors.lightGreen,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            "assets/images/default.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 2, 20, 2),
                          //color: Colors.grey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 240,
                                //color: Colors.green,
                                child: Text("Название фильмаwww wwwwwwwwwwww",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                    overflow: TextOverflow.ellipsis),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Рейтинг : ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "8.7",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Container(
                                //color: Colors.red,
                                  width: 240,
                                  height: 55,
                                  child: Text(
                                    "Жанры фильма ssssssssssss ssaaaasssssssssssssssassss sssssssssssssssssssssssssssssssssssss",
                                    maxLines: 3,
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ));
              }),
        ));
  }
}
