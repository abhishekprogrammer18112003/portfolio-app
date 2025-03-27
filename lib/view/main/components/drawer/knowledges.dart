import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Java, SpringBoot, Jdbc, ORM'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'C, C++'),
        KnowledgeText(knowledge: 'SQl, Firebase, MongoDB'),
        KnowledgeText(knowledge: 'Operating System, Networking'),
        KnowledgeText(knowledge: 'Oops, Machine Learning'),
        KnowledgeText(knowledge: 'Data Structures & Algorithms'),
        KnowledgeText(knowledge: 'Node.js, Javascript and Express.js'),




      ],
    );
  }

}
