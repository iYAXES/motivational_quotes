import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';

class QuoteTheme extends StatelessWidget {
  final Quotes quote;
  final Function() delete;
  QuoteTheme({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(12, 10, 12, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('${quote.photo}'),
              radius: 25,
            ),
            Text(
              '${quote.text}',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${quote.author}',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                ElevatedButton.icon(
                    onPressed: delete,
                    icon: Icon(Icons.delete),
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0, backgroundColor: Colors.transparent),
                    label: Text('delete quote',
                        style:
                            TextStyle(fontSize: 14, color: Colors.redAccent)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
