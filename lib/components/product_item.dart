import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {

  final String imageURL;
  final String menuName;
  final double price;

  const ProductItem({Key? key, required this.imageURL, required this.menuName, required this.price}) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {

  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    widget.imageURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: (_isFavorite) ? Colors.red : Colors.grey,
                  ),
                ),
                Text(widget.menuName)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("${widget.price} ฿"),
            )
          ],
        ),
      ),
    );
  }
}
