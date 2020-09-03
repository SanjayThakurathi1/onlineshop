class ListDescription {
  int id;
  String price;
  String img;
  String name;
  String color;
  String date;
  String capacity;
  ListDescription(
      {this.id,
      this.capacity,
      this.color,
      this.img,
      this.date,
      this.name,
      this.price});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'photo': img,
      'color': color,
      'model': date,
      'capacity': capacity,
    };
  }

  ListDescription.extractfrommap(Map<String, dynamic> toMap) {
    this.date = toMap['model'];
    this.capacity = toMap['capacity'];
    this.color = toMap['color'];
    this.img = toMap['photo'];
    this.name = toMap['name'];
    this.price = toMap['price'];
    this.id = toMap['id'];
  }
}
