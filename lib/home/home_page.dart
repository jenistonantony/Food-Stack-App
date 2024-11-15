import 'package:flutter/material.dart';
import 'package:food_stack_app/home/about_menu.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController();

  List<Map<String, dynamic>> product = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() {
    product = [
      {
        "name": "Burger",
        "detail": "BEST Sides for Burgers",
        "imagebaner": "assets/images/burger3.jpg",
        "image": "assets/images/burger.png",
        "Discription": "Make this grilling season one",
        "price": "6.70"
      },
      {
        "name": "Samosa",
        "detail": "Samosa On Plate",
        "image": "assets/images/samosa.png",
        "imagebaner": "assets/images/burger3.jpg",
        "Discription": "Make this grilling season one",
        "price": "8.90"
      },
      {
        "name": "Chicken",
        "detail": "Burger On Plate",
        "image": "assets/images/chicken.png",
        "imagebaner": "assets/images/burger3.jpg",
        "Discription": "Make this grilling season one",
        "price": "7.20"
      },
      {
        "name": "Samosa",
        "detail": "BEST Sides for Plate",
        "image": "assets/images/samosa.png",
        "imagebaner": "assets/images/burger3.jpg",
        "Discription": "Make this grilling season one",
        "price": "9.10"
      },
    ];
    setState(() {});
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  int dish = 0;
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      decoration: const BoxDecoration(),
                      child: Center(
                        child: Row(
                          children: [
                            ClipRRect(
                              child: Image.asset(
                                "assets/images/logo.png",
                                height: 40,
                              ),
                            ),
                            const Text(
                              "FoodStack",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start,
                            ),
                            const Spacer(),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.blue.shade200),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                  color: Colors.green,
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => MapMethodExample()));
                                  },
                                  icon:
                                      const Icon(Icons.shopping_cart_outlined)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey.shade300)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          showCursor: false,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: "What are you looking for?",
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                              border: InputBorder.none),
                          controller: searchController,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/images/burger3.jpg",
                                  ),
                                  fit: BoxFit.cover)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 145, top: 20),
                            child: Column(
                              children: [
                                Expanded(
                                  child: RichText(
                                    text: const TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Free Delivery",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: " For Spaghetti",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              "                      Up to 3 times per day",
                                          style: TextStyle(
                                            fontSize: 20,
                                          ))
                                    ]),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 110, bottom: 55),
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Order Now",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: product.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AboutMenu()));
                              // Add logic for selecting a product, like updating the 'dish' variable
                              setState(() {
                                dish = index;
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 100,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: dish == index
                                        ? Colors.green
                                        : Colors.grey.shade300,
                                  ),
                                  color: dish == index
                                      ? Colors.white
                                      : Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      product[index]["image"],
                                      height: 100,
                                    ),
                                    Text(
                                      product[index]["name"],
                                      style: TextStyle(
                                        color: dish == index
                                            ? Colors.green
                                            : Colors.grey.shade700,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recommended for you",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "See More",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 455,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxHeight:
                                  MediaQuery.of(context).size.height - 100),
                          child: ResponsiveGridList(
                              listViewBuilderOptions: ListViewBuilderOptions(
                                  physics:
                                      const NeverScrollableScrollPhysics()),
                              minItemsPerRow: 2,
                              horizontalGridMargin: 10,
                              verticalGridMargin: 10,
                              minItemWidth: 100,
                              children: List.generate(
                                4,
                                (index) {
                                  if (index < product.length) {
                                    return Container(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        // image: DecorationImage(
                                        //     image:
                                        //         AssetImage(product[index]["image"])),
                                        color: Colors.grey.shade200,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                              product[index][
                                                                  "imagebaner"],
                                                            ))),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  child: Container(
                                                    decoration:
                                                        const BoxDecoration(),
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            product[index]
                                                                ["detail"],
                                                            style: const TextStyle(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        Text(
                                                          product[index]
                                                              ["Discription"],
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color: Colors.grey
                                                                  .shade600),
                                                        ),
                                                        const SizedBox(
                                                          height: 10,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 20,
                                                          vertical: 10),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: <TextSpan>[
                                                            const TextSpan(
                                                                text: "\$",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            TextSpan(
                                                                text: product[
                                                                        index]
                                                                    ["price"],
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        15,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold))
                                                          ])),
                                                    ),
                                                    const Spacer(),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration: const BoxDecoration(
                                                            borderRadius: BorderRadius.only(
                                                                topLeft: Radius
                                                                    .circular(
                                                                        10),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        10)),
                                                            color:
                                                                Colors.amber),
                                                        child: IconButton(
                                                            onPressed: () {},
                                                            icon: const Icon(Icons
                                                                .shopping_cart)),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    return Container(
                                      height: 200,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Center(
                                          child: Text('Product not available')),
                                    );
                                  }
                                },
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
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
