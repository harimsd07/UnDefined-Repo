import 'package:awesomequote/quote_card.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(home: Quote(), debugShowCheckedModeBanner: false));
}

class Quote extends StatefulWidget {
  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  List<QuoteTest> quotes = [
    QuoteTest(
      text: 'Be yourself; everyone else is already taken',
      author: 'Oscar Wilde',
    ),
    QuoteTest(
      text: 'I have nothing to declare except my genius',
      author: 'Oscar Wilde',
    ),
    QuoteTest(
      text: 'The truth is rarely pure and never simple',
      author: 'Oscar Wilde',
    ),
  ];

  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children:
            quotes
                .map(
                  (quote) => QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    },
                  ),
                )
                .toList(),
      ),
    );
  }
}
