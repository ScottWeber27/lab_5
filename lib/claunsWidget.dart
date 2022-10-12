import 'package:flutter/material.dart';
import 'clauns.dart';

class ClaunsWidget extends StatefulWidget {
  const ClaunsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ClaunsWidget> createState() => _ClaunsWidgetState();
}

class _ClaunsWidgetState extends State<ClaunsWidget> {
  ///make a hard coded list of clauns
  List<Clauns> clauns = [
    Clauns("OLAS", "Brazilian Greetings", "2022-10-07"),
    Clauns("OSLO", "Home to the Viking Ship Museum", "2022-10-07"),
    Clauns("REN", "Means nothing to the French", "2022-10-07"),
    Clauns("GRAY", "Common Horse Breed", "2022-10-07"),
    Clauns("ELITE", "Group at the top", "2022-10-07"),
  ];

  ///method to sort and update list by clue
  void _sortClue() {
    setState(() {
      clauns.sort((i,j) => i.clue.compareTo(j.clue));
    });
  }

  ///method to sort and update list by answer
  void _sortAnswer() {
    setState(() {
      clauns.sort((i,j) => i.answer.compareTo(j.answer));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: clauns.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  title: Text(clauns[index].clue),
                  subtitle: Text(clauns[index].answer));
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                color: Colors.grey,
                thickness: 1,
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: _sortClue, child: 
              const Text("Sort by Clue"),
            ),
            ElevatedButton(onPressed: _sortAnswer, child: 
              const Text("Sort by Answer")
            )
          ],
        )
      ],
    );
  }
}
