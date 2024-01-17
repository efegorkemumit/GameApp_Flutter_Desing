import 'package:flutter/material.dart';
import 'package:gameapp_flutter/data.dart';
import 'package:gameapp_flutter/home/ScroolWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _deviceHeight;
  var _deviceWidth;

  var _selectedGame;

  @override
  void initState(){
    super.initState();
    _selectedGame = 0;
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _topGamesWidget(),
          _gradientBoxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

  Widget _topGamesWidget(){
    return SizedBox(
      height: _deviceHeight * 0.5,
      width: _deviceWidth,
      child: PageView(
        onPageChanged: (_index){
          setState(() {
            _selectedGame = _index;
          });
        },
        scrollDirection: Axis.horizontal,
        children: topgames.map((_game) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit:BoxFit.cover,
                image:NetworkImage(_game.coverImage.url),
              ),

            ),

          );
        }).toList(),
      ),


    );


  }

  Widget _gradientBoxWidget(){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _deviceHeight * 0.68,
        width: _deviceWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(35, 47, 44, 1.0),
              Colors.transparent,
            ],
            stops: [0.80, 1.0],
            begin: Alignment.bottomCenter,
            end:Alignment.topCenter,
          ),
        ),
      ),
    );
  }

  Widget _topLayerWidget(){
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.04, vertical: _deviceHeight * 0.025

        ),
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _topBarWidget(),
            SizedBox(height: _deviceHeight * 0.18),
            _topGameInfo(),
            Padding(padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.01),
              child: ScrollGamesWidget(_deviceHeight * 0.20, _deviceWidth, true, gamesone)
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.01),
                child: ScrollGamesWidget(_deviceHeight * 0.20, _deviceWidth, false, gamesone)
            )

          ],
        ),
    );
  }

  Widget _topBarWidget(){
    return SizedBox(
      height: _deviceHeight*0.13,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.menu,
            color:Colors.red
          ),
          Row(
            children: <Widget> [
              Icon(
                  Icons.search,
                  color:Colors.red
              ),
              SizedBox(
                width: _deviceWidth* 0.03,
              ),

              Icon(
                  Icons.notifications_active,
                  color:Colors.red
              ),

            ],
          )

        ],
      ),

    );
  }


  Widget _topGameInfo(){
    return SizedBox(
      height: _deviceHeight * 0.15,
      width: _deviceWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            topgames[_selectedGame].title,
            maxLines: 1,
            style: TextStyle(color: Colors.white, fontSize: _deviceHeight*0.035),
          ),
          SizedBox(height: _deviceHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: topgames.map((_game){
              bool _isActive =
                  _game.title == topgames[_selectedGame].title;
              double _circleRadius = _deviceHeight * 0.006;
              return Container(
                margin: EdgeInsets.only(right: _deviceWidth * 0.020),
                height: _circleRadius * 2,
                width: _circleRadius * 2,
                decoration: BoxDecoration(
                  color: _isActive ? Colors.green : Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),

              );

            }).toList(),
          )
        ],

      ),

    );

  }
}
