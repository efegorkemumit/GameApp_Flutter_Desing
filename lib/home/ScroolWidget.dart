import 'package:flutter/material.dart';
import 'package:gameapp_flutter/data.dart';

class ScrollGamesWidget extends StatelessWidget {

  final double _height;
  final double _width;
  final bool _showTitle;

  final List<Game> _gamesData;

  ScrollGamesWidget(
      this._height, this._width , this._showTitle, this._gamesData
      );

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: _gamesData.map((_game){
          return Container(
              height: _height,
              width: _width * 0.25,
              padding: EdgeInsets.only(right: _width*0.03),

              child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: _height * 0.8,
                  width: _width * 0.65,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit:BoxFit.cover,
                          image: NetworkImage(_game.coverImage.url)
                      )
                  ),

                ),
                _showTitle ? Text(_game.title, maxLines: 1, style: TextStyle(
                  color:Colors.white
                ),): Container()

              ],
            ),

          );
        }).toList()
      ),
    );
  }
}
