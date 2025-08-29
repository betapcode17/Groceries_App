import 'package:flutter/material.dart';
import 'package:shop_app/home_screen_page.dart';

class ProductdetailPage extends StatefulWidget {
  const ProductdetailPage({super.key});

  @override
  State<ProductdetailPage> createState() => _ProductdetailPageState();
}

class _ProductdetailPageState extends State<ProductdetailPage> {
  int productCount = 1;
  var _isMaxReached = false;
  var _isMinReached = false;
  var _isBookMark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomescreenPage(),
                              ),
                            ),
                          },
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomescreenPage(),
                                ),
                              );
                            },
                            child: Image.asset(
                              "assets/img/back_arrow_icon.png",
                              height: 18,
                              width: 18,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/img/arrow_upward_icon.png",
                          height: 18,
                          width: 18,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.asset(
                      "assets/img/apple_img.png",
                      height: 120,
                      width: 200,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 12,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffB3B3B3),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 4,
                        height: 4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffB3B3B3),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //2 Title
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Naturel Red Apple",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: onToggleBookMark,
                    child: Image.asset(
                      _isBookMark
                          ? "assets/img/bookmark_icon_red.png"
                          : "assets/img/bookmark_icon_gray.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
            //3 kg
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: Text(
                "1kg, Price",
                style: TextStyle(
                  fontSize: 13,
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            //4
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: onToggleSub,
                        child: Image.asset(
                          _isMinReached
                              ? "assets/img/sub_icon_green.png"
                              : "assets/img/sub_icon_gray.png",
                          height: 12,
                          width: 12,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffE2E2E2)),
                        ),
                        child: Center(
                          child: Text(
                            productCount.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: onToggleAdd,
                        child: Image.asset(
                          _isMaxReached
                              ? "assets/img/add_icon_gray.png"
                              : "assets/img/add_icon_green.png",
                          height: 14,
                          width: 14,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "\$4.99",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Color(0xB2E2E2E2),
              ),
            ),

            // Product Detail
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Product Detail",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Image.asset(
                    "assets/img/arrow_downward_icon.png",
                    height: 12,
                    width: 15,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: Text(
                "Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthful and varied diet.",
                style: TextStyle(
                  color: Color(0xff7C7C7C),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Color(0xB2E2E2E2),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Nutritions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 40,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(5),
                        ),

                        child: Text(
                          "100gr",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7C7C7C),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        "assets/img/next_icon.png",
                        height: 15,
                        width: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: 1,
                width: double.infinity,
                color: Color(0xB2E2E2E2),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Review",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),

                  Row(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index) {
                          return Image.asset(
                            "assets/img/start_icon.png",
                            height: 15,
                            width: 15,
                          );
                        }),
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        "assets/img/next_icon.png",
                        height: 15,
                        width: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff53B175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(
                        Radius.circular(19),
                      ),
                    ),
                  ),
                  onPressed: onAddToBasketPressed,
                  child: Text(
                    "Add to Basket",
                    style: TextStyle(color: Color(0xffFFF9FF)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onAddToBasketPressed() {}
  void onToggleSub() {
    if (productCount > 1) {
      setState(() {
        productCount--;
        _isMinReached = productCount == 1;
        _isMaxReached = false;
      });
    }
  }

  void onToggleAdd() {
    if (productCount < 5) {
      setState(() {
        productCount++;
        _isMaxReached = productCount == 5;
        _isMinReached = false;
      });
    }
  }

  void onToggleBookMark() {
    setState(() {
      _isBookMark = !_isBookMark;
    });
  }
}
