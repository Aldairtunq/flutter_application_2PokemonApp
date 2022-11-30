class pokemonModel {
  String name;
  String img;
  List<String> type;

  pokemonModel({
    required this.name,
    required this.img,
    required this.type,
  });

  factory pokemonModel.fromJson(Map<String, dynamic> json) => pokemonModel(
        name: json["name"],
        img: json["img"],
        type: List<String>.from(json["type"].map((e) => e)),
      );
}
