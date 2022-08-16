class Station {
  final String name;
  final String category;
  final String address;
  final String city;
  final String? imageUrl;

  final double totalRating;
  final int totalReviews;

  final double speedRating;
  final double serviceRating;

  final double avgPrice;

  final double rating;

  final int totalComments;

  Station({
    required this.name,
    this.category = 'Fast Food',
    this.address = '',
    required this.city,
    this.imageUrl,
    this.totalRating = 5,
    this.totalReviews = 1,
    this.speedRating = 7.93,
    this.serviceRating = 7.58,
    this.avgPrice = 50,
    this.rating = 8.9,
    this.totalComments = 18,
  });
}
