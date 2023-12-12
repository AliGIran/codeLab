import 'package:flutter/material.dart';

// void main(){runApp(homeMarketPage());}

class homeMarketPage extends StatefulWidget {
  const homeMarketPage({super.key});

  @override
  State<homeMarketPage> createState() => _homeMarketPageState();
}

class _homeMarketPageState extends State<homeMarketPage> {
  @override
  final List _list = [
    ['assets/cardImages/food1.jpg', 'title1', 'subtitle1'],
    ['assets/cardImages/food2.jpg', 'title2', 'subtitle2'],
    ['assets/cardImages/food3.jpg', 'title3', 'subtitle3'],
    ['assets/cardImages/food4.jpg', 'title4', 'subtitle4'],
    ['assets/cardImages/food5.jpg', 'title5', 'subtitle5'],
    ['assets/cardImages/food6.jpg', 'title6', 'subtitle6'],
  ];

  List<Card> _listGridCard(int count) {
    List<Card> cards = List.generate(count, (int index) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ///this line reads file from list and help generating cards faster
            // Image.asset(_list[index][0]),

            Expanded(
              child: Image.asset(
                _list[index][0],
                fit: BoxFit.cover,
              ),
            ),

            ///this line reads image address from list and fit it into the card
            /*AspectRatio(
               aspectRatio: 18 / 11,
               child: Image.asset(_list[index][0]),
             ),*/

            ///using AspectRatio is not necessary.
            ///It just give you more flexibility
            // AspectRatio(
            //   aspectRatio: 18 / 11,
            //   child: Image.asset('assets/cardImages/squareFood.jpg'),
            // ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(_list[index][1]), Text(_list[index][2])],
              ),
            )
          ],
        ),
      );
    });

    return cards;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
        ),
        title: const Text('SHRIN'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune,
                semanticLabel: 'filter',
              ))
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(20),
        childAspectRatio: 8 / 10,
        children: _listGridCard(6),
      ),
    );
  }
}
