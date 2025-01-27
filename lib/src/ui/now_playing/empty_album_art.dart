import 'package:flutter/material.dart';

class EmptyAlbumArtContainer extends StatelessWidget {
  const EmptyAlbumArtContainer({
    Key key,
    @required double radius,
    @required double albumArtSize,
  })  : _radius = radius,
        _albumArtSize = albumArtSize,
        super(key: key);

  final double _radius;
  final double _albumArtSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(_radius),
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: _albumArtSize,
            color: Colors.grey[400],
            child: Center(
              child: Icon(
                Icons.music_note,
                size: 175,
                color: Colors.black,
              ),
            ),
          ),
          Opacity(
            opacity: 0.55,
            child: Container(
              width: double.infinity,
              height: _albumArtSize,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [
                    0.0,
                    0.85,
                  ],
                  colors: [
                    Color(0xFF47ACE1),
                    Color(0xFFDF5F9D),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
