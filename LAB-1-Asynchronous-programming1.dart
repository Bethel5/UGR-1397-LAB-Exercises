import 'dart:async';
import 'dart:math';

void main() async {

  String quote = await fetchRandomQuote();
  
  print("Random Quote: $quote");
}

Future<String> fetchRandomQuote() async {
  await Future.delayed(Duration(seconds: 2));
  
  List<String> quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
    "The way to get started is to quit talking and begin doing. - Walt Disney",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "In the end, it's not the years in your life that count. It's the life in your years. - Abraham Lincoln",
    "You only live once, but if you do it right, once is enough. - Mae West",
  ];
  
  Random random = Random();
  int index = random.nextInt(quotes.length);
  
  return quotes[index];
}
