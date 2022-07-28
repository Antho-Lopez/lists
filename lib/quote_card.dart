import 'package:flutter/material.dart';
import 'package:lists/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback my_name_delete;

  QuoteCard({required this.quote, required this.my_name_delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600]
              ),
            ),

            SizedBox(height: 6),

            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800]
              ),
            ),

            SizedBox(height: 6),

            FlatButton.icon(
                onPressed: my_name_delete,
                icon: Icon(Icons.delete),
                label: Text('Delete Quote'),
            ),
          ],
        ),
      ),
    );
  }
}