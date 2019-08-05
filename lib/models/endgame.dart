import 'package:flutter/material.dart';
import 'package:snake/models/constants.dart';

class EndGame extends StatelessWidget {
  final GAMESTATE _state;
  final int _highscore;
  final int _score;

  EndGame(this._state, this._score, this._highscore);
  String _highscoreBroken() {
    var text;
    if (_score > _highscore) {
      text = 'G O O D  J O B';
    } else {
      text = 'N O O B  S H I T';
    }
    return text;
  }

  String _showScoreOrBrokeHighScore() {
    var text;
    if (_score > _highscore) {
      text = 'You broke your own highscore!';
    } else {
      text = 'Your score: $_score';
    }
    return text;
  }

  String _gameStatus() {
    var _status;
    if (_state == GAMESTATE.VICTORY) {
      _status = 'Congratulations! You are the best!';
    } else if (_state == GAMESTATE.DIED) {
      _status = 'G A M E  O V E R';
    }
    return _status;
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _gameStatus(), //GAME OVER
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    fontFamily: 'Impact',
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _highscoreBroken(), // NOOB SHIT
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    fontFamily: 'Impact',
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _showScoreOrBrokeHighScore(), // Your Score
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Impact',
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  _score > _highscore
                      ? 'New Highscore: $_score'
                      : 'Highscore: $_highscore', //Highscore
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Impact',
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              'assets/sprite/gameover.png',
              fit: BoxFit.contain,
            ),
            height: 250,
            width: 250,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tap To Restart',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'Impact',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
