import 'package:flutter/material.dart';
import 'package:gnezdilov/main.dart';
import 'package:google_fonts/google_fonts.dart';

class Instruments extends StatefulWidget {
  final String appBarTitle;

  Instruments(this.appBarTitle);

  @override
  _InstrumentsState createState() => _InstrumentsState();
}

class _InstrumentsState extends State<Instruments> {
  static const _instrumentNumber = 13;
  static const _tileWidth = 400.0;
  int _imagesPerRow;
  List<bool> _flipped = List(_instrumentNumber)
    ..fillRange(0, _instrumentNumber, false);
  int _imageSelectedIndex = 0;
  bool _imageFlipped = false;
  num _imageWidth;

  Widget tileLayoutSwitch() {
    return IconButton(
      icon: Icon(_imagesPerRow > 1 ? Icons.aspect_ratio : Icons.apps),
      tooltip: _imagesPerRow > 1 ? 'По одной карточке' : 'В виде сетки',
      onPressed: () {
        setState(() {
          _imagesPerRow = _imagesPerRow > 1
              ? 1
              : MediaQuery.of(context).size.width ~/ _tileWidth;
        });
      },
    );
  }

  Widget imageAvatars() {
    List<Widget> _instrumentsMini =
        (List<int>.generate(13, (i) => i).map((i) => GestureDetector(
              child: Material(
                  elevation: 3,
                  shape: CircleBorder(),
                  shadowColor: _imageSelectedIndex == i
                      ? Colors.amberAccent
                      : Colors.grey,
                  child: Container(
                      decoration: new BoxDecoration(
                        border: Border.all(
                          width: _imageSelectedIndex == i ? 1.5 : 0.5,
                          color: _imageSelectedIndex == i
                              ? Colors.amberAccent
                              : Colors.grey,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/instruments/front${i.toString()}.jpg'),
                      ))),
              onTap: () {
                setState(() {
                  _imageSelectedIndex = i;
                  _imageFlipped = false;
                });
              },
            ))).toList();

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 4.0,
      runSpacing: 4.0,
      children: _instrumentsMini,
    );
  }

  Widget singleImage() {
    String filePath = _imageFlipped
        ? 'assets/images/instruments/back${_imageSelectedIndex.toString()}.jpg'
        : 'assets/images/instruments/front${_imageSelectedIndex.toString()}.jpg';

    return GestureDetector(
      onTap: () {
        setState(() {
          Container(
            key: ValueKey(filePath),
            width: _imageWidth,
            child: Image.asset(filePath),
          );
          _imageFlipped = !_imageFlipped;
        });
      },
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation animation) =>
            RotationTransition(child: child, turns: animation),
        child: Container(
          key: ValueKey(filePath),
          width: _imageWidth,
          child: Image.asset(filePath),
        ),
      ),
    );
  }

  List<Widget> imagesForGrid() {
    List<Widget> _instruments = [];
    for (var i = 0; i < _instrumentNumber; i++) {
      String filePath = _flipped[i]
          ? 'assets/images/instruments/back${i.toString()}.jpg'
          : 'assets/images/instruments/front${i.toString()}.jpg';
      _instruments.add(GestureDetector(
        onTap: () {
          setState(() {
            Container(
              key: ValueKey(filePath),
              width: _tileWidth,
              child: Image.asset(filePath),
            );
            _flipped[i] = !_flipped[i];
          });
        },
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation animation) =>
              RotationTransition(child: child, turns: animation),
          child: Container(
            key: ValueKey(filePath),
            width: _tileWidth,
            child: Image.asset(filePath),
          ),
        ),
      ));
    }
    return _instruments;
  }

  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;
    _imagesPerRow ??= _screenWidth ~/ _tileWidth;
    _imageWidth = _screenWidth < 800 ? _screenWidth : _screenWidth * 0.7;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle, style: GoogleFonts.alice()),
        actions: <Widget>[
          _screenWidth > 1000
              ? tileLayoutSwitch()
              : Container(),
        ],
      ),
      body: _imagesPerRow > 1
          ? GridView.count(
              shrinkWrap: true,
              crossAxisCount: _imagesPerRow,
              children: imagesForGrid(),
            )
          : SingleChildScrollView(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: imageAvatars(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: singleImage(),
                    ),
                  ],
                ),
              ),
            ),
      bottomNavigationBar: MyApp().bottomNavigation(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: MyApp().floatingHomeButton(context),
    );
  }
}
