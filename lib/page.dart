import 'package:api_le/Api.dart';
import 'package:api_le/page2.dart';
import 'package:api_le/post.dart';
import 'package:flutter/material.dart';

class Pade extends StatefulWidget {
  const Pade({super.key});

  @override
  State<Pade> createState() => _PadeState();
}

class _PadeState extends State<Pade> {
  void ontAp() {
    Navigator.of(context).pushNamed('/page2');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        builder: (context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Entry> api = snapshot.data!;
            return ListView.builder(
                itemCount: api.length,
                itemBuilder: ((context, index) {
                  return Center(
                    child: Text(api[index].link),
                  );
                }));
          }
        },
        future: getName(),
      ),
    );
  }
}
