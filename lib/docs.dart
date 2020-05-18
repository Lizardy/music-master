import 'package:flutter/material.dart';
import 'gallery.dart';

class Docs extends StatelessWidget {

  // TODO use cloud storage instead of assets?
  Widget galleryDiplomas() {
    List<GalleryItem> galleryItems = <GalleryItem>[
      GalleryItem(
        id: 'diploma_master',
        resource: 'assets/images/patent.jpg',
      ),
    ];

    return Gallery(galleryItems: galleryItems);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: galleryDiplomas(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
