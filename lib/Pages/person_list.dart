import 'package:flutter/material.dart';
import 'package:online_shop/Pages/Models/persons.dart';

class PersonList extends StatelessWidget {
 PersonList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text("Person"),),
      body: ListView.builder(
        itemCount: person.length,
        itemBuilder: (context, index){
        return Card(
          child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(person[index].image),
                
              ),
              title: Text(person[index].name),
          ),
        );
      }),
    ));
  }
}