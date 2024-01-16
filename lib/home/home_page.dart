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
        height: _deviceHeight * 0.62,
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
}
