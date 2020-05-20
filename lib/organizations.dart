import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Organization {
  String title;
  String url;
  String iconFileName;
  String description;
  int yearStart;
  int yearEnd;

  Organization(
    this.title, {
    this.url,
    this.iconFileName,
    this.description,
    this.yearStart,
    this.yearEnd,
  });

  Widget icon() {
    return this.iconFileName != null
        ? CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage:
                AssetImage('assets/images/organizations/${this.iconFileName}'))
        : CircleAvatar(backgroundColor: Colors.transparent);
  }
}

class OrgsCard extends StatefulWidget {
  const OrgsCard(this.parentWidth) : super();

  final parentWidth;

  static List<Organization> _orgs = [
    Organization(
      'председатель Алтайской краевой общественной организации «Центр многострунных инструментов народов\u00A0Алтая»',
      url:
          'https://nko22.ru/nko/tsentr-mnogostrunnykh-instrumentov-narodov-altaya-altayskaya-kraevaya-obshchestvennaya-organizatsiya/',
      iconFileName: 'cmina.png',
      yearStart: 2012,
      yearEnd: 0,
    ),
    Organization(
      'участник Алтайской краевой творческой общественной организации народных ремесленников «Город\u00A0мастеров»',
      url:
          'https://nko22.ru/nko/gorod-masterov-altayskaya-kraevaya-tvorcheskaya-obshchestvennaya-organizatsiya-narodnykh-remeslennik/',
      iconFileName: 'gm.jpg',
      yearStart: 2015,
      yearEnd: 0,
    ),
//    Organization(
//      'член Союза музыкальных мастеров Сибири',
//      url: 'http://afmforum.ru/viewforum.php?f=43',
//      iconFileName: 'afm.gif',
//      yearStart: 1998,
//      yearEnd: 0,
//    ),
    Organization(
      'член Ассоциации фортепианных мастеров России и «ЕВРОПИАНО»',
      url: 'http://afmforum.ru/static.php?p=afm',
      iconFileName: 'afm.gif',
      yearStart: 1999,
      yearEnd: 0,
    ),
    Organization(
      'член Российского Творческого Союза мастеров\u2011художников и реставраторов музыкальных инструментов',
      url: 'http://musicmaster1994.ru',
      yearStart: 2001,
      yearEnd: 0,
    ),
    Organization(
      'музыкальный мастер Алтайского государственного оркестра русских народных инструментов им.\u00A0Е.\u00A0И.\u00A0Борисова «Сибирь»',
      url: 'http://ork-siberia.ru/index.php',
      iconFileName: 'ork-sibir.jpg',
      yearStart: 1989,
      yearEnd: 0,
    ),
    Organization(
      'член Общественной палаты Барнаула III\u00A0созыва',
      iconFileName: 'barnaul.jpg',
      yearStart: 2014,
      yearEnd: 2017,
    ),
    Organization(
      'руководитель творческой лаборатории «Музыкальная археология Алтая»',
//      yearStart: 2000,
//      yearEnd: 2001,
    ),
    Organization(
      'студент Новосибирской государственной консерватории им.\u00A0М.\u00A0И.\u00A0Глинки по классу балалайки (заочно)',
      url: 'http://www.nsglinka.ru/',
      yearStart: 1990,
      yearEnd: 1992,
    ),
    Organization(
      'выпускник Алтайского Государственного института культуры',
      url: 'https://www.altgaki.org/',
      yearStart: 1977,
      yearEnd: 1981,
    ),
  ];

  @override
  _OrgsCardState createState() => _OrgsCardState();
}

class _OrgsCardState extends State<OrgsCard> {
  bool _collapseList = true;

  Widget organizationTile(Organization org) {
    return ListTile(
      title: Text(org.title),
      subtitle: Text(org.yearStart != null && org.yearEnd != null
          ? '${org.yearStart} - ${org.yearEnd == 0 ? 'настоящее время' : org.yearEnd}'
          : ''),
      leading: org.icon(),
      trailing: org.url != null ? Icon(Icons.open_in_new) : Container(width: 0),
      onTap: () async {
        if (await canLaunch(org.url)) {
          await launch(org.url);
        } else {
          throw 'Невозможно перейти по адресу ${org.url}';
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _items = [];
    _items = OrgsCard._orgs.map((org) => organizationTile(org)).toList();
    if (_collapseList) {
      _items = _items.getRange(0, 5).toList();
      _items.add(ListTile(
        title: Text('...', textAlign: TextAlign.center),
        onTap: () {
          setState(() {
            _collapseList = false;
          });
        },
      ));
    }

    return Card(
      child: Container(
        width: widget.parentWidth * 0.9,
        child: ListView(
          shrinkWrap: true,
          primary: true,
          physics: new NeverScrollableScrollPhysics(),
          children: _items,
        ),
      ),
    );
  }
}
