import 'package:flutter/material.dart';
import 'package:lists/quote.dart';
import 'package:lists/quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'ouais ouais le text', author: 'Auteur'),
    Quote(text: 'ouais ouais le text 2', author: 'Auteur 2'),
    Quote(text: 'ouais ouais le text 3', author: 'Auteur 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Listes'),
        centerTitle: true,
        backgroundColor: Colors.amber[700],
      ),
      body: Column(
        // FOREACH ELEMENTS DANS UN TABLEAU EN FLUTTER
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            my_name_delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}

