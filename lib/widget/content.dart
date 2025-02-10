class UnboardingContent {
  String image;
  String title;
  String description;

  // Constructor must be properly declared
  UnboardingContent({required this.image, required this.title, required this.description});
}

// Correct list initialization
List<UnboardingContent> contents = [
  UnboardingContent(
    description: 'Pick your food from menu \n more than 35 times',
    image: 'images/screen1.png',
    title: 'Select from our \n Best Menu',
  ),
  UnboardingContent(
    description: 'You can pay cash on Delivery',
    image: 'images/screen2.png',
    title: 'Easy and Online',
  ),
  UnboardingContent(
    description: 'Deliver food to your \n door step',
    image: 'images/screen3.png',
    title: 'Quick delivery to your door step',
  ),
];
