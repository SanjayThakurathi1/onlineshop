import 'package:flutter/material.dart';
import 'package:online_shopping/Models/products.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'const.dart';

class TrendingItem extends StatefulWidget {
  final Product product;

  TrendingItem({
    this.product,
  });

  @override
  _TrendingItemState createState() => _TrendingItemState();
}

class _TrendingItemState extends State<TrendingItem> {
  bool love = false;

  @override
  Widget build(BuildContext context) {
    double trendCardWidth = 195;
    double trendCardheight = 236;

    return GestureDetector(
      child: Stack(
        children: <Widget>[
          Container(
            height: trendCardheight,
            width: trendCardWidth,
            child: Card(
              elevation: 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Spacer(),
                        IconButton(
                          color: love ? Colors.red : Colors.black26,
                          icon: Icon(FontAwesomeIcons.solidHeart),
                          onPressed: () {
                            setState(() {
                              love = !love;
                            });
                          },
                        ),
                      ],
                    ),
                    _productImage(),
                    _productDetails()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      /*onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Descriptionproduct(
              products: Product(
                  name: "A",
                  company: "B",
                  price: "111111",
                  rating: 3.33,
                  remainingquantity: 5,
                  icon: Provider.of<Providerlist>(context).img[1]),
            ),
          ),
        );
      },*/
    );
  }

  _productImage() {
    return Stack(
      children: <Widget>[
        Center(
          child: Container(
            width: 105,
            height: 105,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.product.icon), fit: BoxFit.contain),
            ),
          ),
        )
      ],
    );
  }

  _productDetails() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(widget.product.name, style: ktextstylrblack),
          SizedBox(
            height: 11,
          ),
          Row(
            children: [
              Text(
                "रू",
                style: kTextstylegreen,
              ),
              SizedBox(
                width: 10,
              ),
              Text("${widget.product.previousprice}",
                  style: kTextstylegreen.copyWith(
                      color: Colors.red,
                      decoration: TextDecoration.lineThrough)),
              SizedBox(
                width: 10,
              ),
              Text(widget.product.price, style: ktextstylrblack),
            ],
          ),

          //StarRating(rating: product.rating, size: 10),
        ],
      ),
    );
  }
}
