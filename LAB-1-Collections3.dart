void main() {
 
  Map<String, int> studentMarks = {};

  
  studentMarks.putIfAbsent('yonathan', () => 85);
  studentMarks.putIfAbsent('Heran', () => 90);
  studentMarks.putIfAbsent('Soliyana', () => 78);
  
  print('Student marks: $studentMarks');
  
  
  print('\nIterating through the map:');
  studentMarks.forEach((name, mark) {
    print('$name: $mark');
  });
  
 
  String searchName = 'Abel';
  if (studentMarks.containsKey(searchName)) {
    print('\n$searchName\'s mark is ${studentMarks[searchName]}');
  } else {
    print('\n$searchName not found in the student list.');
  }
}