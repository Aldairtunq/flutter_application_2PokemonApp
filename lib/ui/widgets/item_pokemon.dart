import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/pokemon_model.dart';
import 'package:flutter_application_2/pages/detail.page.dart';
import 'package:flutter_application_2/ui/widgets/item_type_widget.dart';

class ItemPokemonWidget extends StatelessWidget {
  //String name;
  //String image;
  //List<String> types;

  pokemonModel pokemon;

  ItemPokemonWidget({
    // required this.name,
    // required this.image,
    //required this.types,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: colorspokemon[pokemon.type.first],
            borderRadius: BorderRadius.circular(18.0)),
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              right: -20,
              child: Image.asset(
                'assets/images/pokeball.png',
                height: 120.0,
                color: Colors.white.withOpacity(0.27),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Column(
                  //   children: types.map((e) => ItemTypeWidget()).toList(),
                  // ),
                  ...pokemon.type
                      .map((item) => ItemTypeWidget(
                            text: item,
                          ))
                      .toList(),
                ],
              ),
            ),
            Positioned(
              bottom: -10,
              right: -10,
              child: Image.network(pokemon.img),
            ),
          ],
        ),
      ),
    );
  }
}
