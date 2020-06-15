import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gnezdilov/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:date_format/date_format.dart';

enum PublicationType { interview, event, other }

class Publication {
  String title;
  String url;
  PublicationType publicationType;
  DateTime date;
  String mediaSource;
  String iconFileName;

  Publication(this.title, this.url, this.publicationType, this.date,
      {this.mediaSource, this.iconFileName});

  Publication.fromMap(Map<String, dynamic> map)
      : title = map['title'] ?? '',
        url = map['url'] ?? '',
        publicationType = map['type'] == describeEnum(PublicationType.interview)
            ? PublicationType.interview
            : map['type'] == describeEnum(PublicationType.event)
                ? PublicationType.event
                : PublicationType.other,
        date = map['date'] != null ? map['date'].toDate() : DateTime.now() {
    // trying to guess the media source by the url to show the name & the icon
    if ((mediaSource == null || iconFileName == null) && url != null) {
      try {
        String mediaSourceKey =
            mediaSources.keys.singleWhere((element) => url.contains(element));
        if (mediaSourceKey != null) {
          if (mediaSource == null &&
              mediaSources[mediaSourceKey].containsKey('name'))
            mediaSource = mediaSources[mediaSourceKey]['name'];
          else if (mediaSource == null &&
              !mediaSources[mediaSourceKey].containsKey('name'))
            mediaSource =
                url.split("/").firstWhere((element) => element.contains('.'));
          if (iconFileName == null &&
              mediaSources[mediaSourceKey].containsKey('iconFileName'))
            iconFileName = mediaSources[mediaSourceKey]['iconFileName'];
        }
      } catch (StateError) {
        // if there's no info on the media source, let's show just the website
        if (mediaSource == null)
          mediaSource =
              url.split("/").firstWhere((element) => element.contains('.'));
      }
    }
  }

  static Map<String, dynamic> mediaSources = {
    'vesti22': {'name': 'Вести Алтай', 'iconFileName': 'vesti_altai.jpg'},
    'info-vb': {'name': 'Вечерний Барнаул', 'iconFileName': 'vb.jpg'},
    'altairegion22': {
      'name': 'Официальный сайт Алтайского края',
      'iconFileName': 'altairegion22.gif'
    },
    'altai.aif': {'name': 'АиФ Алтай', 'iconFileName': 'aif.jpg'},
    'bankfax': {'name': 'Банкфакс', 'iconFileName': 'bankfax.jpg'},
    'amic': {'name': 'Amic.ru', 'iconFileName': 'amic.jpg'},
    'altapress': {'name': 'Алтапресс', 'iconFileName': 'altapress.jpeg'},
    'ap22': {'name': 'Алтайская правда', 'iconFileName': 'ap22.jpg'},
    'katun24': {'name': 'Катунь 24', 'iconFileName': 'k24.jpg'},
  };

  Widget icon() {
    String src = 'assets/images/publications/${this.iconFileName}';
    return this.iconFileName != null
        ? CircleAvatar(backgroundImage: AssetImage(src))
        : CircleAvatar(backgroundColor: Colors.transparent);
  }
}

class Publications extends StatefulWidget {
  final String appBarTitle;

  Publications(this.appBarTitle);

  @override
  _PublicationsState createState() => _PublicationsState();
}

class _PublicationsState extends State<Publications> {
  bool _publicationsOrderNewFirst = true;

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Интервью'),
    Tab(text: 'События'),
    Tab(text: 'Иное'),
  ];

  Widget publicationTile(Publication publication) {
    List<Widget> _subtitles = <Widget>[
      Text(publication.mediaSource ?? '', overflow: TextOverflow.fade),
      Text(
        publication.date != null
            ? formatDate(publication.date, [dd, '.', mm, '.', yyyy])
            : '',
      ),
    ];
    return Card(
      elevation: 1,
      child: ListTile(
        leading: publication.icon(),
        title: Text(
          publication.title,
          textAlign: TextAlign.justify,
        ),
        subtitle: LayoutBuilder(builder: (context, constraints) {
          return constraints.maxWidth > 400
              ? Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: _subtitles,
          ) : Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [_subtitles.first],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [_subtitles.last],
              )
            ],
          );
        }),
        onTap: () async {
          if (await canLaunch(publication.url)) {
            await launch(publication.url);
          } else {
            throw 'Невозможно перейти по адресу ${publication.url}';
          }
        },
      ),
    );
  }

  Widget publicationsOrder() {
    return IconButton(
      icon: Icon(Icons.sort),
      tooltip: _publicationsOrderNewFirst
          ? 'Показать сначала давние'
          : 'Показать сначала недавние',
      onPressed: () {
        setState(() {
          _publicationsOrderNewFirst = !_publicationsOrderNewFirst;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.appBarTitle, style: GoogleFonts.alice()),
          actions: <Widget>[publicationsOrder()],
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            PublicationType publicationType;
            switch (tab.text) {
              case 'Интервью':
                publicationType = PublicationType.interview;
                break;
              case 'События':
                publicationType = PublicationType.event;
                break;
              case 'Иное':
                publicationType = PublicationType.other;
                break;
              default:
                publicationType = PublicationType.interview;
            }
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: StreamBuilder<QuerySnapshot>(
                  stream: Firestore.instance
                      .collection('publications')
                      .where('type', isEqualTo: describeEnum(publicationType))
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError)
                      return Text('Error: ${snapshot.error}');
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return Container();
                      default:
                        if (snapshot.data.documents.isEmpty)
                          return Container();
                        else {
                          List<Publication> publications = snapshot
                              .data.documents
                              .map((DocumentSnapshot document) =>
                                  Publication.fromMap(document.data))
                              .toList();
                          if (_publicationsOrderNewFirst)
                            publications
                                .sort((a, b) => b.date.compareTo(a.date));
                          else
                            publications
                                .sort((a, b) => a.date.compareTo(b.date));
                          return ListView(
                              children: publications
                                  .map((p) => publicationTile(p))
                                  .toList());
                        }
                    }
                  },
                ));
          }).toList(),
        ),
        bottomNavigationBar: MyApp().bottomNavigation(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: MyApp().floatingHomeButton(context),
      ),
    );
  }
}
