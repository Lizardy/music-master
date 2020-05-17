import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainCard extends StatelessWidget {
  const MainCard(this.parentWidth) : super();

  final double parentWidth;

  Widget photoPortrait() {
    return parentWidth > 800
        ? Image.asset(
            'assets/images/portrait.JPG',
            fit: BoxFit.fitHeight,
            width: parentWidth / 4,
          )
        : Image.asset(
            'assets/images/portrait_h.JPG',
            fit: BoxFit.fitWidth,
          );
  }

  List<Widget> contacts() {
    return [
      ListTile(
        title: SelectableText(
          "Гнездилов Александр Ильич",
          textAlign: TextAlign.center,
          style: GoogleFonts.ruslanDisplay(
            fontSize: 22.0,
          ),
        ),
        subtitle: Image.asset(
          'assets/images/slavic_pattern_h.jpg',
          fit: BoxFit.scaleDown,
        ),
      ),
      ListTile(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.envelopeSquare),
          onPressed: () async {
            String url = 'mailto:mnogostrun@mail.ru';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Невозможно перейти по адресу $url';
            }
          },
        ),
        title: SelectableText("mnogostrun@mail.ru"),
      ),
      ListTile(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.phoneSquare),
          onPressed: () async {
            String url = 'tel:+73852478583';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Невозможно перейти по адресу $url';
            }
          },
        ),
        title: SelectableText(
          "+7 (3852) 47-85-83",
        ),
      ),
      ListTile(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.phoneSquare),
          onPressed: () async {
            String url = 'tel:+79130921116';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Невозможно перейти по адресу $url';
            }
          },
        ),
        title: SelectableText(
          "+7 913 092 1116",
        ),
      ),
      ListTile(
        leading: IconButton(
          hoverColor: Colors.lightGreen,
          icon: Icon(FontAwesomeIcons.mapMarkerAlt),
          onPressed: () async {
            String url = 'https://go.2gis.com/opwsn';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Невозможно перейти по адресу $url';
            }
          },
        ),
        title: SelectableText("656066,\u00A0Барнаул, ул.\u00A0Уральская\u00A011\u20111"),
      ),
      ListTile(
        leading: IconButton(
          hoverColor: Colors.red,
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
        title: Text('канал на YouTube'),
      ),
      ListTile(
        leading: IconButton(
          hoverColor: Colors.orange,
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
        title: Text('профиль на Одноклассниках'),
      ),
    ];
  }

  List<Widget> otherWebsites() {
    return [
      ListTile(
        title: Text(
          "Дружественные сайты",
          textAlign: TextAlign.center,
          style: GoogleFonts.ruslanDisplay(
            fontSize: 18.0,
          ),
        ),
        subtitle: Image.asset(
          'assets/images/slavic_pattern_h.jpg',
          fit: BoxFit.scaleDown,
        ),
      ),
      ListTile(
        title: FlatButton(
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
      ),
      ListTile(
        title: FlatButton(
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
      ),
      ListTile(
        title: FlatButton(
          child: Text('ГМИЛИКА: экспозиция \n«Культура древних народов Алтая»',
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
      ),
      ListTile(
        title: FlatButton(
          child: Text(
              'Российский национальный музей музыки:\n«Скифская арфа - дар Алтая»',
              textAlign: TextAlign.center),
          onPressed: () async {
            String url =
                'https://music-museum.ru/collections/expomusic/skifskaya-arfa-dar-altaya';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Невозможно перейти по адресу $url';
            }
          },
        ),
      ),
      ListTile(
        title: FlatButton(
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
      ),
      ListTile(
        title: FlatButton(
          child: Text(
              'О народном мастере на сайте проекта \n«Традиционная народная культура Алтайского края»',
              textAlign: TextAlign.center),
          onPressed: () async {
            String url =
                'http://alttradition.ru/mastera/2012/gnezdilov-aleksandr-il-ich1/index.php';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Невозможно перейти по адресу $url';
            }
          },
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: parentWidth * 0.9,
        child: Flex(
          crossAxisAlignment: CrossAxisAlignment.start,
          direction: parentWidth > 800 ? Axis.horizontal : Axis.vertical,
          children: <Widget>[
            photoPortrait(),
            parentWidth > 800
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: contacts(),
                        mainAxisAlignment: MainAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: contacts(),
                    ),
                  ),
            parentWidth > 800
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: otherWebsites(),
                        mainAxisAlignment: MainAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: otherWebsites(),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final parentWidth;

  ActivityCard(this.parentWidth);

  final List<String> _activities = [
    '\nРеставрация музыкальных инструментов\n',
    '\nСоздание авторских музыкальных инструментов\n',
    '\nСоздание сувенирных звучащих музыкальных инструментов\n',
    '\nНастройка фортепиано, роялей в\u00A0любом состоянии\n',
    '\nПроведение мастер\u2011классов, творческих встреч\u2011лекций\n',
    '\nСбор сведений о\u00A0музыкальных мастерах, объединение опыта\n',
  ];
  final List<String> _imageNames = [
    'restoration.png',
    'creation.png',
    'souvenir.png',
    'tuning.png',
    'lecture.png',
    'masters.png',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> _activityTiles = [];
    for (var i = 0; i < _activities.length; i++) {
      var _alignment, _width, _textAlign, _height, _padding;
      if (parentWidth < 450) {
        _alignment = i % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight;
        _textAlign = i % 2 == 0 ? TextAlign.left : TextAlign.right;
        _width = parentWidth * 0.9;
        _height = _width / 3;
        _padding = i % 2 == 0
            ? EdgeInsets.only(right: _width / 6, left: 20.0)
            : EdgeInsets.only(left: _width / 6, right: 20.0);
      } else if (parentWidth < 1000) {
        _alignment = i % 2 == 0 ? Alignment.centerLeft : Alignment.centerRight;
        _textAlign = i % 2 == 0 ? TextAlign.left : TextAlign.right;
        _width = parentWidth * 0.9 / 2;
        _height = _width / 2;
        _padding = EdgeInsets.symmetric(horizontal: _width / 6);
      } else {
        _alignment = Alignment.center;
        _textAlign = TextAlign.center;
        _width = parentWidth * 0.9 / 3;
        _height = _width / 2;
        _padding = EdgeInsets.symmetric(horizontal: _width / 6);
      }
      _activityTiles.add(Container(
        width: _width,
        height: _height,
        alignment: _alignment,
        padding: _padding,
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            _activities[i],
            textAlign: _textAlign,
            softWrap: true,
            style: GoogleFonts.alice(
              fontSize: parentWidth > 800 ? 18.0 : 14.0,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(0.95)),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/activity/${_imageNames[i]}'),
            fit: BoxFit.cover,
          ),
        ),
      ));
    }

    return Card(
      child: Container(
        width: parentWidth * 0.9,
        child: Wrap(
          runSpacing: 10.0,
          children: _activityTiles,
        ),
      ),
    );
  }
}

class MainNavigation extends StatelessWidget {
  const MainNavigation(this.parentWidth) : super();

  final parentWidth;

  static Map<String, Map<String, String>> navigationData = {
    'organizations': {
      'title': 'Организации',
      'imgPath': 'assets/images/organizations.jpg'
    },
    'activity': {
      'title': 'Деятельность',
      'imgPath': 'assets/images/activity.jpg'
    },
    'instruments': {
      'title': 'Авторские инструменты',
      'imgPath': 'assets/images/instruments.jpg'
    },
    'biography': {
      'title': 'Автобиография',
      'imgPath': 'assets/images/biography.jpg'
    },
    'publications': {
      'title': 'Публикации в СМИ',
      'imgPath': 'assets/images/publications.jpg'
    },
    'docs': {'title': 'Дипломы', 'imgPath': 'assets/images/patent.jpg'},
  };

  Widget navigationTile(
      BuildContext context, String route, String title, String imgPath) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        elevation: 1.0,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, '/$route'),
          child: GridTile(
            child: Image.asset(
              imgPath,
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
            header: GridTileBar(
              title: Text(
                title,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
                style: GoogleFonts.ruslanDisplay(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              subtitle: Image.asset(
                'assets/images/slavic_pattern_h.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tileWidth = parentWidth > 800 ? 400 : parentWidth > 600 ? 250 : parentWidth;
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: parentWidth ~/ tileWidth,
        children: List<Widget>.from(navigationData.entries.map((element) =>
            navigationTile(context, element.key, element.value['title'],
                element.value['imgPath']))),
      ),
    );
  }
}
