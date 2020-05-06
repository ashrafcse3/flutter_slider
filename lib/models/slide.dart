class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({this.imageUrl, this.title, this.description});
}

final slideList = [
  Slide(
    imageUrl: 'images/Chilli.png',
    title: 'Chilli Pepper',
    description: 'Assist prevention of diabetes \n Good for the heart \n Assists weight loss \n Anti-Inflammatory \n Prevents stomach ulcers \n Boost Immunity'
  ),
  Slide(
    imageUrl: 'images/Carrot.png',
    title: 'Carrot',
    description: 'Great for eye health \n Improves liver function \n Improves skin \n Healthy teeth \n Improves digestion \n Anti-Cancer'
  ),
  Slide(
    imageUrl: 'images/Eggplant.png',
    title: 'Eggplant',
    description: 'Rich in fiber \n Improves cardiovascular health \n Regulates cholesterol \n Prevent infection \n Purifies blood \n Boost cognition'
  ),
];
