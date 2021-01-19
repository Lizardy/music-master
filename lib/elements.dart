import 'package:flutter/services.dart';
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
            'assets/images/portrait_v.JPG',
            fit: BoxFit.fitHeight,
            width: parentWidth / 4,
          )
        : Image.asset(
            'assets/images/portrait_h.JPG',
            fit: BoxFit.fitWidth,
          );
  }

  List<Widget> contacts(BuildContext context) {
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
        title: SelectableText("mnogostrun@mail.ru"),
        leading: IconButton(
          tooltip: 'mailto:mnogostrun@mail.ru',
          icon: FaIcon(FontAwesomeIcons.envelope),
          onPressed: () async {
            String email = 'mnogostrun@mail.ru';
            try {
              await launch('mailto:$email');
            } catch (e) {
              await Clipboard.setData(ClipboardData(text: email));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Email скопирован в буфер обмена'),
              ));
            }
          },
        ),
      ),
      ListTile(
        title: SelectableText("+7 903 949 9597"),
        leading: IconButton(
          tooltip: 'tel:+79039499597',
          icon: Icon(FontAwesomeIcons.phone),
          onPressed: () async {
            String phone = '+79039499597';
            try {
              await launch('tel:$phone');
            } catch (e) {
              await Clipboard.setData(ClipboardData(text: phone));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Номер скопирован в буфер обмена'),
              ));
            }
          },
        ),
      ),
      ListTile(
        title: SelectableText("+7 913 092 1116"),
        leading: IconButton(
          tooltip: 'tel:+79130921116',
          icon: FaIcon(FontAwesomeIcons.phone),
          onPressed: () async {
            String phone = '+79130921116';
            try {
              await launch('tel:$phone');
            } catch (e) {
              await Clipboard.setData(ClipboardData(text: phone));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Номер скопирован в буфер обмена'),
              ));
            }
          },
        ),
      ),
//      ListTile(
//        title: SelectableText(
//            "656066,\u00A0Барнаул, ул.\u00A0Уральская\u00A011\u20111"),
//        subtitle: Text('мастерская'),
//        leading: IconButton(
//          hoverColor: Colors.lightGreen,
//          icon: Icon(FontAwesomeIcons.mapMarkerAlt),
//          onPressed: () async {
//            String url = 'https://go.2gis.com/opwsn';
//            if (await canLaunch(url)) {
//              await launch(url);
//            } else {
//              throw 'Невозможно перейти по адресу $url';
//            }
//          },
//        ),
//      ),
      ListTile(
        title: SelectableText(
            "Барнаул, пр.\u00A0Красноармейский\u00A014"),
        subtitle: Text(
            'музей музыкальных инструментов в\u00A0«Городе\u00A0мастеров»'),
        leading: IconButton(
          hoverColor: Colors.lightGreen,
          tooltip: 'https://go.2gis.com/nfm3e',
          icon: Icon(FontAwesomeIcons.mapMarkerAlt),
          onPressed: () async {
            String url = 'https://go.2gis.com/nfm3e';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Невозможно перейти по адресу $url';
            }
          },
        ),
      ),
      ListTile(
        title: Text('видео на YouTube'),
        leading: IconButton(
          hoverColor: Colors.red,
          tooltip: 'https://www.youtube.com/channel/UCveazYk32WOwJ65uA8em-hA/',
          icon: FaIcon(FontAwesomeIcons.youtube),
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
      ),
      ListTile(
        title: Text('музыка на SoundCloud'),
        leading: IconButton(
          hoverColor: Colors.deepOrange,
          tooltip: 'https://soundcloud.com/dytyrbjk4vxf',
          icon: FaIcon(FontAwesomeIcons.soundcloud),
          onPressed: () async {
            String url = 'https://soundcloud.com/dytyrbjk4vxf';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Невозможно перейти по адресу $url';
            }
          },
        ),
      ),
      ListTile(
        title: Text('профиль на Одноклассниках'),
        leading: IconButton(
          hoverColor: Colors.orange,
          tooltip: 'https://ok.ru/profile/506526714215',
          icon: FaIcon(FontAwesomeIcons.odnoklassniki),
          onPressed: () async {
            String url = 'https://ok.ru/profile/506526714215';
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

  List<Widget> otherWebsites() {
    List<Map<String, String>> items = [
      {
        'title': 'ГМИЛИКА: экспозиция \n«Культура древних народов Алтая»',
        'url': 'http://gmilika.ru/ekspoziciya-kultura-drevnix-narodov-altaya.html',
      },
      {
        'title': 'Российский национальный музей музыки:\n«Скифская арфа - дар Алтая»',
        'url': 'https://music-museum.ru/collections/expomusic/skifskaya-arfa-dar-altaya.html',
      },
      {
        'title': 'О скифской арфе \nна сайте группы \"Дядя Го\"',
        'url': 'http://www.goh.ru/skif/arfa.htm',
      },
      {
        'title': 'О скифской культуре \nна сайте группы \"Дядя Го\"',
        'url': 'http://www.goh.ru/skif/skifs.htm',
      },
      {
        'title': 'О народном мастере на сайте \nминистерства культуры Алтайского края',
        'url': 'http://www.culture22.ru/institutions/folk-art/folk-artists/56040/',
      },
      {
        'title': 'О народном мастере на сайте проекта \n«Традиционная народная культура Алтайского края»',
        'url': 'http://alttradition.ru/mastera/2012/gnezdilov-aleksandr-il-ich1/index.php',
      },
    ];

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
      ...items.map((item) => ListTile(
        title: Tooltip(
          message: item['url'],
          child: TextButton(
            child: Text(item['title'], textAlign: TextAlign.center),
            onPressed: () async {
              if (await canLaunch(item['url'])) {
                await launch(item['url']);
              } else {
                throw 'Невозможно перейти по адресу ${item['url']}';
              }
            },
          ),
        ),
      )).toList()];
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
                        children: contacts(context),
                        mainAxisAlignment: MainAxisAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      children: contacts(context),
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
//    'organizations': {
//      'title': 'Организации',
//      'imgPath': 'assets/images/organizations.jpg'
//    },
//    'activity': {
//      'title': 'Деятельность',
//      'imgPath': 'assets/images/activity.jpg'
//    },
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
//    'docs': {'title': 'Дипломы', 'imgPath': 'assets/images/patent.jpg'},
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
    final tileWidth =
//        parentWidth > 800 ? parentWidth / 4 : parentWidth > 600 ? parentWidth / 2 : parentWidth;
        parentWidth > 800 ? 350 : parentWidth > 600 ? 250 : parentWidth;
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        primary: true,
        physics: new NeverScrollableScrollPhysics(),
        crossAxisCount: parentWidth ~/ tileWidth,
        children: List<Widget>.from(navigationData.entries.map((element) =>
            navigationTile(context, element.key, element.value['title'],
                element.value['imgPath']))),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10.0),
      child:
      TextButton(
        child: Text('сделано в семье', style: GoogleFonts.alice()),// с ❤
        onPressed: () async {
          String url = 'https://github.com/Lizardy/music-master';
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Невозможно перейти по адресу $url';
          }
        },
      ),
    );
  }
}
