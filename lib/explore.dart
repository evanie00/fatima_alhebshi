import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final List<Map<String, String>> items = const [
    {
      'title': 'Adventure Book',
      'subtitle': 'Exciting stories for kids and adults',
    },
    {
      'title': 'Digital Drawing Course',
      'subtitle': 'Learn digital drawing step by step',
    },
    {
      'title': 'Easy Recipes',
      'subtitle': 'Quick and delicious dishes to try',
    },
    {
      'title': 'Game Development',
      'subtitle': 'Basics of making games with Unity',
    },
    {
      'title': 'Travel & Explore',
      'subtitle': 'Tips and ideas for fun trips around the world',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index){
        return Divider();
      },
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.book),
          title: Text(items[index]['title']!),
          subtitle: Text(items[index]['subtitle']!),
          trailing: IconButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You tapped on ${items[index]['title']}')),
                );
              },
              icon: Icon(Icons.arrow_forward_ios_rounded),
          ),
        );
      },
    );
  }
}