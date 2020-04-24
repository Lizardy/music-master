import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  Widget photoPortrait() {
    return Image.asset(
      'assets/images/portrait.JPG',
      fit: BoxFit.contain,
      width: 260,
    );
  }

  Widget contacts() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            "Гнездилов Александр Ильич",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          Icon(FontAwesomeIcons.envelopeSquare),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text("mnogostrun@mail.ru"),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Icon(FontAwesomeIcons.phoneSquare),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "(3852) 47-85-83,\n24-97-94,\n+7 913 092 1116",
              textAlign: TextAlign.center,
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Icon(FontAwesomeIcons.mapMarkerAlt),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text("656066, Барнаул, \nул. Уральская 11-1"),
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.youtubeSquare,
            ),
            onPressed: () async {
              String url =
                  'https://www.youtube.com/channel/UCveazYk32WOwJ65uA8em-hA/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Невозможно перейти по адресу $url';
              }
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.odnoklassnikiSquare,
            ),
            onPressed: () async {
              String url = 'https://ok.ru/profile/506526714215';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Невозможно перейти по адресу $url';
              }
            },
          ),
        ],
      ),
    );
  }

  Widget otherWebsites() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            "Дружественные сайты",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          Icon(FontAwesomeIcons.music),
          FlatButton(
            child: Text('О скифской арфе \nна сайте группы \"Дядя Го\"',
                textAlign: TextAlign.center),
            onPressed: () async {
              String url = 'http://www.goh.ru/skif/arfa.htm';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Невозможно перейти по адресу $url';
              }
            },
          ),
          FlatButton(
            child: Text('О скифской культуре \nна сайте группы \"Дядя Го\"',
                textAlign: TextAlign.center),
            onPressed: () async {
              String url = 'http://www.goh.ru/skif/skifs.htm';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Невозможно перейти по адресу $url';
              }
            },
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Icon(FontAwesomeIcons.city),
          FlatButton(
            child: Text(
                'ГМИЛИКА: экспозиция \n«Культура древних народов Алтая»',
                textAlign: TextAlign.center),
            onPressed: () async {
              String url =
                  'http://gmilika.ru/ekspoziciya-kultura-drevnix-narodov-altaya.html';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Невозможно перейти по адресу $url';
              }
            },
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Icon(FontAwesomeIcons.addressBook),
          FlatButton(
            child: Text(
                'О народном мастере на сайте \nминистерства культуры Алтайского края',
                textAlign: TextAlign.center),
            onPressed: () async {
              String url =
                  'http://www.culture22.ru/institutions/folk-art/folk-artists/56040/';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Невозможно перейти по адресу $url';
              }
            },
          ),
          Padding(padding: EdgeInsets.all(5.0)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              photoPortrait(),
              contacts(),
              otherWebsites(),
        ]),
      ),
    );
  }
}

class MainNavigation extends StatelessWidget {
  //TODO images
  static Map<String, String> _navigationData = {
    'Биография': 'assets/images/harp_ancient.jpg',
    'Деятельность': 'assets/images/harp_ancient.jpg',
    'Музыкальные инструменты': 'assets/images/harp_ancient.jpg',
    'Организации': 'assets/images/harp_ancient.jpg',
    'Публикации в СМИ': 'assets/images/harp_ancient.jpg',
  };

  Widget navigationTile(String imgPath, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 1.0,
        child: InkWell(
          onTap: () {},
          child: GridTile(
            child: Image.asset(
              imgPath,
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
            ),
            header: GridTileBar(
              title: Text(
                title,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.visible,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 5,
        children: List<Widget>.from(_navigationData.entries
            .map((element) => navigationTile(element.value, element.key))),
      ),
    );
  }
}
