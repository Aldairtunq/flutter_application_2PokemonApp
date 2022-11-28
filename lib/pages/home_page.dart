import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});
//uri permite identificar y localizar
//url localizador de reurso del servidor
  getDataPokemon() async {
    Uri _uri = Uri.parse(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-pokedex/master/pokedex.json");
    http.Response response = await http.get(_uri);
    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("data"),
          onPressed: () {
            getDataPokemon();
          },
        ),
      ),
    );
  }
}
