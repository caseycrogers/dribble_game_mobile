import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sandbox/model/game_model.dart';

class Prompt extends StatelessWidget {
  const Prompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final GameModel game = ref.watch(gameProvider);
        return Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: 'Connect '),
              TextSpan(
                text: game.startPlayer.name,
                style: const TextStyle(
                  color: Colors.amber,
                ),
              ),
              const TextSpan(text: ' to '),
              TextSpan(
                text: game.goalPlayer.name,
                style: const TextStyle(
                  color: Colors.amber,
                ),
              ),
              const TextSpan(text: ' through mutual teammates'),
            ],
          ),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        );
      },
    );
  }
}
