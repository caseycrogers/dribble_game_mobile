import 'package:flutter/material.dart';
import 'package:sandbox/widgets/prompt.dart';

const kPagePadding = 8.0;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0, kToolbarHeight),
        child: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border),
                padding: const EdgeInsets.all(kPagePadding),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.info_outline),
                padding: const EdgeInsets.all(kPagePadding),
                onPressed: () {},
              ),
              Expanded(
                child: Text(
                  'DRIBBLE',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              // This is a dummy icon to force the title to center.
              Opacity(
                opacity: 0,
                child: IconButton(
                  icon: const Icon(Icons.bar_chart),
                  padding: const EdgeInsets.all(kPagePadding),
                  onPressed: () {},
                ),
              ),
              IconButton(
                icon: const Icon(Icons.bar_chart),
                padding: const EdgeInsets.all(kPagePadding),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kPagePadding,
        ),
        child: Column(
          children: [
            Container(
              color: Theme.of(context).dividerColor,
              width: double.infinity,
              height: 2,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kPagePadding),
                child: ListView(
                  children: const [
                    Prompt(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
