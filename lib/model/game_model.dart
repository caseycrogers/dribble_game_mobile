import 'package:flutter_riverpod/flutter_riverpod.dart';

// State generation needs to be replaced with an async call to get the data.
final StateProvider<GameModel> gameProvider = StateProvider(
  (ref) => GameModel(
    startPlayer: Player(name: 'Shai Gilgeous-Alexander'),
    goalPlayer: Player(name: 'Jarrett Allen'),
  ),
);

class GameModel {
  GameModel({
    required this.startPlayer,
    required this.goalPlayer,
  });

  final Player startPlayer;
  final Player goalPlayer;
}

class Player {
  Player({
    required this.name,
  });

  final String name;
}
