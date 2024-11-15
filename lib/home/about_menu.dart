import 'package:flutter/material.dart';

class AboutMenu extends StatefulWidget {
  const AboutMenu({super.key});

  @override
  State<AboutMenu> createState() => _AboutMenuState();
}

class _AboutMenuState extends State<AboutMenu> {
  final TextEditingController searchingController = TextEditingController();
  int _selectedIndex = 0;
  int _quantity = 1;
  bool _isFavorited = false;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 214, 241, 253),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(200),
                          bottomRight: Radius.circular(200))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 40),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_back_ios),
                            ),
                            const Text(
                              "About this Menu",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade200),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                color: Colors.green,
                                onPressed: () {},
                                icon: const Icon(Icons.shopping_cart_outlined),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 210,
                          width: 300,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/images/burger5.png"),
                            fit: BoxFit.cover,
                          )),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Burgers Taste Different.",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue.shade200,
                                    ),
                                    shape: BoxShape.circle),
                                child: IconButton(
                                  color: Colors.green,
                                  onPressed: () {},
                                  icon: const Icon(Icons.share),
                                ),
                              ),
                              IconButton(
                                color:
                                    _isFavorited ? Colors.green : Colors.green,
                                onPressed: _toggleFavorite,
                                icon: Icon(_isFavorited
                                    ? Icons.favorite
                                    : Icons.favorite_border),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        width: MediaQuery.of(context).size.width * 0.99,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 15),
                              child: Row(
                                children: [
                                  const Text(
                                    "Amanda Morales - 5.0",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(width: 15),
                                  Image.asset(
                                    "assets/images/star.png",
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              color: Colors.white30,
                              height: 1,
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: SizedBox(
                                    height: 80,
                                    width: 200,
                                    child: Text(
                                      "I didn't expect this to be this delicious, this is the first time I've tried this. Recommended to y'all; must try this.",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 14),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  height: 70,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.arrow_forward_ios_sharp),
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: _decrementQuantity,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade100,
                            ),
                            child: Center(
                              child: Text(
                                '$_quantity',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: _incrementQuantity,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.green),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            height: 50,
                            width: 130,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green),
                              onPressed: () {},
                              child: const Text(
                                "Add to Cart!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Text(
                _selectedIndex == 1
                    ? 'History'
                    : _selectedIndex == 2
                        ? 'Promo'
                        : 'Profile',
                style: const TextStyle(fontSize: 24),
              ),
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: "Promo"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
