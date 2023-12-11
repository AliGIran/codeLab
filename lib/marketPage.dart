import 'package:flutter/material.dart';

class homeMarketPage extends StatefulWidget {
  const homeMarketPage({super.key});

  @override
  State<homeMarketPage> createState() => _homeMarketPageState();
}

class _homeMarketPageState extends State<homeMarketPage> {
  @override
  List<Card> _listGridCard(int count) {
    List<Card> cards = List.generate(count, (int index) {
      return Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/cardImages/squareFood.jpg'),

            ///using AspectRatio is not necessary.
            ///It just give you more flexibility
            // AspectRatio(
            //   aspectRatio: 18 / 11,
            //   child: Image.asset('assets/cardImages/squareFood.jpg'),
            // ),

            const Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Title1"), Text("Second title")],
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
        childAspectRatio: 8 / 8,
        children: _listGridCard(6),
      ),
    );
  }
}

class _recipt  {
  List<List<String>> description = [
    ["title1", "subtitle1"],
    ["title2", "subtitle2"],
    ["title3", "subtitle3"],
    ["title4", "subtitle4"],
    ["title5", "subtitle5"],
    ["title6", "subtitle6"],
  ];

  List<Image> imageAddresses = [
    Image.asset('assets/cardImages/food1.jpg'),
    Image.asset('assets/cardImages/food2.jpg'),
    Image.asset('assets/cardImages/food3.jpg'),
    Image.asset('assets/cardImages/food4.jpg'),
    Image.asset('assets/cardImages/food5.jpg'),
    Image.asset('assets/cardImages/food6.jpg'),
  ];

}
