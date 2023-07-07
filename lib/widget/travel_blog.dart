class Travel {

  String name ;
  String location ;
  String url ;

  Travel ( this.name, this.location, this.url);

  static List<Travel> generateTravel () {
    return [
      Travel('Place 1', 'Place 1', 'lib/images/top1.jpg'),
      Travel('Place 2', 'Place 2', 'lib/images/top2.jpg'),
      Travel('Place 3', 'Place 3', 'lib/images/top3.jpg'),
      Travel('Place 4', 'Place 4', 'lib/images/top4.jpg'),
    ];
  }
  static List<Travel> generateMostPopular () {
    return [
      Travel('Place 5', 'Place 5', 'lib/images/bottom1.jpg'),
      Travel('Place 6', 'Place 6', 'lib/images/bottom2.jpg'),
      Travel('Place 7', 'Place 7', 'lib/images/bottom3.jpg'),
      Travel('Place 8', 'Place 8', 'lib/images/bottom4.jpg'),
    ];
  }
}