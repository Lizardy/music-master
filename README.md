# Music master personal portfolio web app

This is an experimental project to try out Flutter and see how good it is, particularly for the web.

## Managed to solve

### `ListView` and `GridView` scrolling

Disable `ListView` and `GridView` internal scrolling so that it doesn't interfere with parent widget's scrolling:  
`physics: new NeverScrollableScrollPhysics()`.

Solution from https://github.com/flutter/flutter/issues/18503

### Modal bottom sheet sizing

By default, modal bottom sheet takes up only half of screen size. For mobile landscape mode I decided to make it open
fullscreen, it's possible with `isScrollControlled: true,` and correspondingly calculated `Container` height.

Solution from https://github.com/flutter/flutter/issues/32747

### Photo gallery controls customization for web usability

The `photo_view` package provides great functionality for both viewing a single image and displaying
 a whole gallery. But as for now, it's more oriented on touchscreens rather than desktop. So I customized 
 its implementation with buttons to close an image and navigate across images.


## Not yet managed to solve

### Hashtag in URL

https://github.com/flutter/flutter/issues/33245

### SEO, server-side rendering

https://github.com/flutter/flutter/issues/47600

### Text selection to copy & paste

https://github.com/flutter/flutter/issues/47234

### YouTube player embedding

AFAIK none of the present packages for embedding YouTube player is compatible with the web


## Other stuff worth mentioning

cover images generated from emojis with the help of https://background-generator.com/


## Other further improvements and features

### Optimize layout for reading on small screens
app bar should disappear when scrolling, sliver-like behaviour

### Audio player 
play files from assets or firebase or anything else?

### i18n & l10n in English in addition to Russian

### Further photo gallery improvements 
such as ability to control with keyboard (left, right, esc)

### Experiment with the photo cards animation
"flipping over" instead of rotating?

### Text styles refactoring into reusable themes

