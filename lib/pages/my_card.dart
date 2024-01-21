import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Card',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(

                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.arrow_drop_down_circle),
                      title: const Text('Solo Leveling'),
                      subtitle: Text(
                        'Manga/Anime',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'In a world of gifted hunters and monsters, a weak hunter Sung Jinwoo gains extraordinary powers through a mysterious program, leading him to become one of the strongest hunters and conquering even the strongest dungeons.',
                        maxLines: 2,
                        style: TextStyle(overflow: TextOverflow.ellipsis, color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Watch Series',
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Read Manga',
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'images/solo_leveling.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

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
