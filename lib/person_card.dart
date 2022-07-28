import 'package:flutter/material.dart';

import 'person.dart';

class PersonCard extends StatelessWidget {
  final Person person;

  const PersonCard({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.lightBlue[100]),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('id',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${person.id}'))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${person.name}'))
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
                child: Text('email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
              ),
              SizedBox(width: 220, child: Text(': ${person.email}'))
            ],
          )
        ],
      ),
    );
  }
}
