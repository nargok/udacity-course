// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

final _height = 100.0;
final _borderRadius = BorderRadius.circular(_height / 2);

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  final IconData icon;
  final String iconText;
  final Color iconColor;
  const Category(this.icon, this.iconText, this.iconColor);


  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Container(
      height: _height, // todo make it constants
//      decoration:
//          new BoxDecoration(borderRadius: new BorderRadius.circular(50.0)),
      child: Padding(
          padding: EdgeInsets.all(8.0), //
          child: InkWell(
            borderRadius: _borderRadius,
            highlightColor: this.iconColor,
            splashColor: this.iconColor,
            onTap: () {
              print('I was tapped!');
            },
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    this.icon, // todo パラメータ渡し
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    this.iconText, // todo パラメータ渡し
                    style: TextStyle(fontSize: 24.0),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
