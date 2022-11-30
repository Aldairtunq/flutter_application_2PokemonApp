import 'package:flutter/material.dart';
import 'package:flutter_application_2/ui/widgets/item_pokemon.dart';
import 'package:flutter_application_2/ui/widgets/item_type_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff49D0B0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff49D0B0),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Bulbasaur",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        ItemTypeWidget(
                          text: "Brass",
                        ),
                        ItemTypeWidget(
                          text: "Brass",
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  "#0001",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              const Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      //data del pokemon
                      Text("About pokemon"),
                      //imagen del pokemon
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}