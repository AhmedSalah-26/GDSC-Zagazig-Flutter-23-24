double? findAverageRating(List<int> ratings) {
  if (ratings.isEmpty) {
    return null;
  }

  int sum = 0;
  for (int rating in ratings) {
    sum += rating;
  }

  return sum / ratings.length;
}

void main() {
  // Example usage:
  List<int> movieRatings1 = [9, 10, 4, 3, 3];
  List<int> movieRatings2 = []; // Empty list

  double? averageRating1 = findAverageRating(movieRatings1);
  double? averageRating2 = findAverageRating(movieRatings2);

  print('Average rating 1: $averageRating1');
  print('Average rating 2: $averageRating2');
}
