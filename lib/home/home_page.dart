import 'package:flutter/material.dart';
import 'package:gameapp_flutter/data.dart';

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
        height: _deviceHeight * 0.72,
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
}
