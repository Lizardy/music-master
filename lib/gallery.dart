import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

const thumbnailWidth = 200.0;

class GalleryItem {
  GalleryItem({this.id, this.resource, this.description});

  final String id;
  final String resource;
  final String description;
}

class GalleryItemThumbnail extends StatelessWidget {
  const GalleryItemThumbnail({Key key, this.galleryItem, this.onTap})
      : super(key: key);

  final GalleryItem galleryItem;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: //Hero(
//          tag: galleryItem.id,
//          child:
            Image.asset(
          galleryItem.resource,
          fit: BoxFit.contain,
          width: thumbnailWidth,
        ),
//        ),
      ),
    );
  }
}

class Gallery extends StatelessWidget {
  const Gallery({Key key, this.galleryItems}) : super(key: key);

  final List<GalleryItem> galleryItems;

  @override
  Widget build(BuildContext context) {
    List<Widget> thumbnails = [];
    for (var i = 0; i < galleryItems.length; i++) {
      thumbnails.add(GalleryItemThumbnail(
        galleryItem: galleryItems[i],
        onTap: () {
          open(context, i);
        },
      ));
    }

    return GridView.count(
      physics: new NeverScrollableScrollPhysics(),
      crossAxisCount: MediaQuery.of(context).size.width ~/ thumbnailWidth,
      mainAxisSpacing: 2.0,
      crossAxisSpacing: 2.0,
      shrinkWrap: true,
      children: thumbnails,
    );
  }

  void open(BuildContext context, final int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        maintainState: false,
        builder: (context) => GalleryPhotoViewWrapper(
          galleryItems: galleryItems,
          backgroundDecoration: const BoxDecoration(
            color: Colors.black,
          ),
          initialIndex: index,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class GalleryPhotoViewWrapper extends StatefulWidget {
  GalleryPhotoViewWrapper({
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialIndex,
    @required this.galleryItems,
    this.scrollDirection = Axis.horizontal,
  }) : pageController = PageController(initialPage: initialIndex);

  final LoadingBuilder loadingBuilder;
  final Decoration backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final List<GalleryItem> galleryItems;
  final Axis scrollDirection;

  @override
  State<StatefulWidget> createState() {
    return _GalleryPhotoViewWrapperState();
  }
}

class _GalleryPhotoViewWrapperState extends State<GalleryPhotoViewWrapper> {
  int currentIndex;

  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    GalleryItem currentGalleryItem = widget.galleryItems[currentIndex];
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: widget.backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: screenH,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: _buildItem,
              itemCount: widget.galleryItems.length,
              loadingBuilder: widget.loadingBuilder,
              backgroundDecoration: widget.backgroundDecoration,
              pageController: widget.pageController,
              onPageChanged: onPageChanged,
              scrollDirection: widget.scrollDirection,
            ),
            // close button
            Positioned(
              right: 10.0,
              top: 20.0,
              child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.times,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            // left button
            currentIndex > 0
                ? Positioned(
                    left: 10.0,
                    top: screenH / 2,
                    child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.chevronLeft,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            currentIndex--;
                          });
                        }),
                  )
                : Container(),
            // right button
            currentIndex < widget.galleryItems.length - 1
                ? Positioned(
                    right: 10.0,
                    top: screenH / 2,
                    child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.chevronRight,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            currentIndex++;
                          });
                        }),
                  )
                : Container(),
            currentGalleryItem.description != null &&
                    currentGalleryItem.description.length > 0
                ? Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      currentGalleryItem.description,
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.blueGrey.withOpacity(0.5),
                        fontSize: 17.0,
                        decoration: null,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final GalleryItem item = widget.galleryItems[currentIndex];
    return PhotoViewGalleryPageOptions(
      imageProvider: AssetImage(item.resource),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
      maxScale: PhotoViewComputedScale.covered * 1.1,
//      heroAttributes: PhotoViewHeroAttributes(tag: item.id),
    );
  }
}
