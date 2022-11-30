import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/pokemon_model.dart';
import 'package:flutter_application_2/ui/widgets/item_pokemon.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//uri permite identificar y localizar

  List pokemons = [];

  List<pokemonModel> pokemonsModel = [];

  @override
  initState() {
    super.initState();
    getDataPokemon();
  }

  getDataPokemon() async {
    Uri _uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-pokedex/master/pokedex.json");
    http.Response response = await http.get(_uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      // pokemons = myMap["pokemon"];
      pokemonsModel =
          myMap["pokemon"].map((e) => pokemonModel.fromJson(e)).toList();
      print(pokemonsModel);
      setState(() {});

      //print(pokemons[0]["name"]);
      //pokemons.forEach((element) {
      // print(element["type"]);
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  "POKEDEX",
                  style: TextStyle(
                    fontSize: 22.9,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                GridView.count(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  childAspectRatio: 1.35,
                  children: pokemonsModel
                      .map(
                        (e) => ItemPokemonWidget(
                          name: e.name,
                          image: e.img,
                          types: e.type,
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
