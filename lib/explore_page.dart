import 'package:flutter/material.dart';
import 'package:shop_app/home_screen_page.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<Map<String, dynamic>> products = [
    {
      "image": "assets/img/FrashFruits&Vegetable.png",
      "title": "Frash Fruits & Vegetable",
    },
    {
      "image": "assets/img/CookingOil&Ghee.png",
      "title": "Cooking Oil & Ghee",
      "color": "",
    },
    {"image": "assets/img/Meat&Fish.png", "title": "Meat & Fish"},
    {"image": "assets/img/Bakery&Snacks.png", "title": "Bakery & Snacks"},
    {"image": "assets/img/Dairy&Eggs.png", "title": "Dairy & Eggs"},
    {"image": "assets/img/Beverages.png", "title": "Beverages"},
    {
      "image": "assets/img/FrashFruits&Vegetable.png",
      "title": "Frash Fruits & Vegetable",
    },
    {"image": "assets/img/CookingOil&Ghee.png", "title": "Cooking Oil & Ghee"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Chiếm toàn bộ không gian
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: <Widget>[
                      Text(
                        "Find Products",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20),
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Search Store",
                              contentPadding: EdgeInsets.only(
                                left: 45,
                                top: 12,
                                bottom: 12,
                              ),
                              filled: true,
                              fillColor: Color(0xffF2F3F2),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Image.asset(
                              "assets/img/search_icon.png",
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ],
                      ),

                      GridView.builder(
                        itemCount: products.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 160,
                        ),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  products[index]["image"]!,
                                  height: 100,
                                  width: 100,
                                ),
                                Text(
                                  products[index]["title"]!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomescreenPage(),
                          ),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/img/home.png",
                            height: 20,
                            width: 20,
                          ),
                          Text(
                            "Shop",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExplorePage(),
                          ),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            "assets/img/explore.png",
                            height: 20,
                            width: 20,
                          ),

                          Text("Explore"),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/img/cart.png",
                          height: 20,
                          width: 20,
                        ),
                        Text("Cart"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/img/favourite.png",
                          height: 20,
                          width: 20,
                        ),
                        Text("Favourite"),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/img/account.png",
                          height: 20,
                          width: 20,
                        ),
                        Text("Account"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
