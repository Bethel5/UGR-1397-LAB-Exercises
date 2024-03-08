void main() {
  List<String> favoriteHobbies = ['Reading', 'Baking', 'Listening to music'];
  
  
  favoriteHobbies.add('Painting');
  print('Added a new hobby: $favoriteHobbies');
  
 
  favoriteHobbies.remove('Painting');
  print('Removed a hobby: $favoriteHobbies');
  
  
  favoriteHobbies.sort();
  print('Sorted hobbies: $favoriteHobbies');
  
  
  if (favoriteHobbies.isEmpty) {
    print('No favorite hobbies');
  } else {
    print('Favorite hobbies exist');
  }
}