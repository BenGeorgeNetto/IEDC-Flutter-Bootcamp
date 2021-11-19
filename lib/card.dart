import 'package:flutter/material.dart';

class imageCard extends StatelessWidget {
  final String heading;
  final String subheading;
  final String supportingText;
  final String cardImage;
  const imageCard({Key? key, required this.heading, required this.subheading, required this.supportingText, required this.cardImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 60.0,
      child: Card(
        margin: const EdgeInsets.only(bottom: 15.0),
          elevation: 4.0,
          child: Column(
            children: [
              ListTile(
                title: Text(heading),
                subtitle: Text(subheading),
                trailing: Icon(Icons.favorite_outline),
              ),
              Container(
                height: 200.0,
                child: Ink.image(
                  image: NetworkImage(cardImage),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Text(supportingText),
              ),
              ButtonBar(
                children: [
                  Container(
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[300],
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: TextButton(
                      child: const Text('Go to website'),
                      onPressed: () {/* ... */},
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
