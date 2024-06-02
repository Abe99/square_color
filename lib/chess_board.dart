import 'dart:math';


Map<String, String> createChessboard() {
  var chessboard = <String, String>{};
  var columns = 'abcdefgh';
  var rows = '12345678';
  for (var col in columns.runes) {
    for (var row in rows.runes) {
      var square = String.fromCharCode(col) + String.fromCharCode(row);
      if ((columns.indexOf(String.fromCharCode(col)) +
              rows.indexOf(String.fromCharCode(row))) %
          2 ==
          0) {
        chessboard[square] = 'b';
      } else {
        chessboard[square] = 'w';
      }
    }
  }
  return chessboard;
}
Map <String, String> chessBoard = createChessboard();

var squares = chessBoard.keys.toList();
var randomSquare = squares[Random().nextInt(squares.length)];
