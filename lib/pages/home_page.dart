import 'package:basic_flutter/components/category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/category_title.dart';
import '../components/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductItem> productItemList = [
    ProductItem(
      imageURL:
          "https://www.thespruceeats.com/thmb/HJrjMfXdLGHbgMhnM0fMkDx9XPQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/what-is-espresso-765702-hero-03_cropped-ffbc0c7cf45a46ff846843040c8f370c.jpg",
      menuName: "Espresso",
      price: 40.0,
    ),
    ProductItem(
      imageURL:
          "https://www.thespruceeats.com/thmb/HJrjMfXdLGHbgMhnM0fMkDx9XPQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/what-is-espresso-765702-hero-03_cropped-ffbc0c7cf45a46ff846843040c8f370c.jpg",
      menuName: "Espresso",
      price: 40.0,
    ),
    ProductItem(
      imageURL:
          "https://www.thespruceeats.com/thmb/HJrjMfXdLGHbgMhnM0fMkDx9XPQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/what-is-espresso-765702-hero-03_cropped-ffbc0c7cf45a46ff846843040c8f370c.jpg",
      menuName: "Espresso",
      price: 40.0,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Align(
          alignment: Alignment.centerRight,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg",
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hi, Chris Evans",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.brown)),
                    prefixIcon: Icon(Icons.search),
                    labelText: "Search"),
              ),
              const SizedBox(
                height: 30,
              ),
              const CategoryTitle(
                title: "Categories",
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryItem(
                      imageURL:
                          "https://cdn1.th.orstatic.com/userphoto/photo/1/UG/0060LKC78DDFA45FC720D3px.jpg",
                      title: 'Coffee',
                    ),
                    CategoryItem(
                      imageURL:
                          "https://www.acouplecooks.com/wp-content/uploads/2021/02/Painkiller-Cocktail-008.jpg",
                      title: 'Drinks',
                    ),
                    CategoryItem(
                      imageURL:
                          "https://sallysbakingaddiction.com/wp-content/uploads/2013/04/triple-chocolate-cake-4.jpg",
                      title: 'Cake',
                    ),
                    CategoryItem(
                      imageURL:
                          "https://img.freepik.com/premium-photo/rice-with-young-green-peas-shrimps-arugula-black-bowl-healthy-food-buddha-bowl_2829-2420.jpg?w=2000",
                      title: 'Food',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const CategoryTitle(title: "Recommended for you"),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductItem(
                      imageURL:
                          "https://www.thespruceeats.com/thmb/HJrjMfXdLGHbgMhnM0fMkDx9XPQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/what-is-espresso-765702-hero-03_cropped-ffbc0c7cf45a46ff846843040c8f370c.jpg",
                      menuName: "Espresso",
                      price: 40.0,
                    ),
                    ProductItem(
                      imageURL:
                          "https://www.thespruceeats.com/thmb/HJrjMfXdLGHbgMhnM0fMkDx9XPQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/what-is-espresso-765702-hero-03_cropped-ffbc0c7cf45a46ff846843040c8f370c.jpg",
                      menuName: "Espresso",
                      price: 40.0,
                    ),
                    ProductItem(
                      imageURL:
                          "https://www.thespruceeats.com/thmb/HJrjMfXdLGHbgMhnM0fMkDx9XPQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/what-is-espresso-765702-hero-03_cropped-ffbc0c7cf45a46ff846843040c8f370c.jpg",
                      menuName: "Espresso",
                      price: 40.0,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const CategoryTitle(title: "Coffee"),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productItemList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return productItemList[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
