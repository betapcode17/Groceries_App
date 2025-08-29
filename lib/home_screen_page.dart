import 'package:flutter/material.dart';
import 'package:shop_app/product_detail_page.dart';
import 'package:shop_app/explore_page.dart';

class HomescreenPage extends StatefulWidget {
  HomescreenPage({super.key});

  final List<Map<String, dynamic>> exclusiveOfferProducts = [
    {
      "image": "assets/img/banana.png",
      "title": "Organic Bananas",
      "unit": "7pcs, Priceg",
      "price": 4.99,
    },
    {
      "image": "assets/img/apple.png",
      "title": "Red Apple",
      "unit": "1kg, Priceg",
      "price": 4.99,
    },
    {
      "image": "assets/img/orange.png",
      "title": "Fresh Orange",
      "unit": "1kg, Priceg",
      "price": 5.99,
    },
  ];

  final List<Map<String, dynamic>> bestSellingProduct = [
    {
      "image": "assets/img/BellPepperRed.png",
      "title": "Bell Pepper Red",
      "unit": "1kg, Priceg",
      "price": 4.99,
    },
    {
      "image": "assets/img/Ginger.png",
      "title": "Ginger",
      "unit": "250gm, Priceg",
      "price": 4.99,
    },
    {
      "image": "assets/img/orange.png",
      "title": "Fresh Orange",
      "unit": "1kg, Priceg",
      "price": 5.99,
    },
  ];

  final List<Map<String, dynamic>> groceries = [
    {
      "image": "assets/img/Pulses.png",
      "title": "Pulses",
      "color": "0xffF8A44C",
    },
    {"image": "assets/img/rice.png", "title": "Rice", "color": "0xff53B175"},
    {
      "image": "assets/img/Pulses.png",
      "title": "Pulses",
      "color": "0xffF8A44C",
    },
  ];

  final List<Map<String, dynamic>> otherProducts = [
    {
      "image": "assets/img/BeefBone.png",
      "title": "Beef Bone",
      "unit": "7pcs, Priceg",
      "price": 4.99,
    },
    {
      "image": "assets/img/BroilerChicken.png",
      "title": "Broiler Chicken",
      "unit": "1kg, Priceg",
      "price": 4.99,
    },
    {
      "image": "assets/img/orange.png",
      "title": "Fresh Orange",
      "unit": "1kg, Priceg",
      "price": 5.99,
    },
  ];

  @override
  State<HomescreenPage> createState() => _HomescreenPageState();
}

class _HomescreenPageState extends State<HomescreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,

        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 20, 30),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            "assets/img/logo.png",
                            height: 42,
                            width: 38,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/img/Exclude_icon.png",
                              height: 42,
                              width: 38,
                            ),
                            Text(
                              "Dhaka, Banassre",
                              style: TextStyle(
                                color: Color(0xff4C4F4D),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Stack(
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
                      ),
                      Container(
                        width: double.infinity, // full chiều ngang
                        height: 150, // bạn có thể chỉnh chiều cao banner
                        child: Image.asset("assets/img/banner.png"),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Exclusive Offer",
                              style: TextStyle(
                                color: Color(0xff181725),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff53B175),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 220,

                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.exclusiveOfferProducts.length,
                          itemBuilder: (context, index) {
                            final exclusiveOfferProducts =
                                widget.exclusiveOfferProducts[index];

                            return Container(
                              height: 200,
                              width: 150,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  10,
                                  10,
                                  0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Image.asset(
                                        exclusiveOfferProducts["image"],
                                        height: 80,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      exclusiveOfferProducts["title"],
                                      style: TextStyle(
                                        color: Color(0xff181725),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      exclusiveOfferProducts["unit"],
                                      style: TextStyle(
                                        color: Color(0xff7C7C7C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "\$${exclusiveOfferProducts["price"].toString()}",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff53B175),
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductdetailPage(),
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Image.asset(
                                                "assets/img/add_icon_white.png",
                                                width: 24,
                                                height: 24,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Best Selling",
                              style: TextStyle(
                                color: Color(0xff181725),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff53B175),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 220,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.bestSellingProduct.length,
                          itemBuilder: (context, index) {
                            final bestSellingProducts =
                                widget.bestSellingProduct[index];

                            return Container(
                              height: 200,
                              width: 150,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  10,
                                  10,
                                  0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Image.asset(
                                        bestSellingProducts["image"],
                                        height: 80,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      bestSellingProducts["title"],
                                      style: TextStyle(
                                        color: Color(0xff181725),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      bestSellingProducts["unit"],
                                      style: TextStyle(
                                        color: Color(0xff7C7C7C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "\$${bestSellingProducts["price"].toString()}",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff53B175),
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductdetailPage(),
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ), // để icon không dính sát viền
                                              child: Image.asset(
                                                "assets/img/add_icon_white.png",
                                                width: 24,
                                                height: 24,
                                                color: Colors
                                                    .white, // nếu muốn đổi màu, bỏ dòng này nếu muốn giữ màu gốc
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Groceries",
                              style: TextStyle(
                                color: Color(0xff181725),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff53B175),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.groceries.length,
                          itemBuilder: (context, index) {
                            final groceries = widget.groceries[index];
                            return Container(
                              height: 90,
                              width: 200,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: groceries["color"] != null
                                    ? Color(int.parse(groceries["color"]))
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  10,
                                  10,
                                  10,
                                  10,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(groceries["image"], height: 80),
                                    SizedBox(width: 10),
                                    Text(
                                      "Pulses",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 220,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.otherProducts.length,
                          itemBuilder: (context, index) {
                            final otherProducts = widget.otherProducts[index];

                            return Container(
                              height: 200,
                              width: 150,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  20,
                                  10,
                                  10,
                                  0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Image.asset(
                                        otherProducts["image"],
                                        height: 80,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      otherProducts["title"],
                                      style: TextStyle(
                                        color: Color(0xff181725),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      otherProducts["unit"],
                                      style: TextStyle(
                                        color: Color(0xff7C7C7C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "\$${otherProducts["price"].toString()}",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xff53B175),
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductdetailPage(),
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ), // để icon không dính sát viền
                                              child: Image.asset(
                                                "assets/img/add_icon_white.png",
                                                width: 24,
                                                height: 24,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
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
