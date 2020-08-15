import 'package:flutter/material.dart';
import 'package:online_shopping/Models/products.dart';
import 'package:online_shopping/Screens/productdescription.dart';
import 'package:online_shopping/Screens/productdisplay.dart';

class Listviewscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        RowHomescreen(
          products1: Product(
            previousprice: "15000",
            price: "14500",
            name: "Realme",
            icon: "assets/realme5i.jpeg",
          ),
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/realme5i.jpeg",
              img2: "assets/realme5i1.jpeg",
              img3: "assets/realme5i2.jpeg",
              img4: "assets/realme5i3.jpeg",
              categories: "Electronic",
              company: "Realme",
              name: "Realme5",
              previousprice: "15000",
              price: "14500"),
          products2: Product(
            tag: "vivo",
            previousprice: "25000",
            price: "23500",
            name: "Vivo",
            icon: ("assets/vivo.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/vivo.jpeg",
              img2: "assets/vivoz1x.jpeg",
              img3: "assets/vivoz1x1.jpeg",
              img4: "assets/vivo.jpeg",
              categories: "Electronic",
              company: "ViVo",
              name: "Vivo V15",
              previousprice: "25000",
              price: "23500"),
        ),
        RowHomescreen(
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/miredminote9.jpeg",
              img2: "assets/miredminote91.jpeg",
              img3: "assets/miredminote92.jpeg",
              img4: "assets/miredminote91.jpeg",
              categories: "Electronic",
              company: "Xiomi",
              name: "Redmi",
              previousprice: "21000",
              price: "19500"),
          products2: Product(
            tag: "xiomi",
            previousprice: "17100",
            price: "16800",
            name: "Xiomi",
            icon: ("assets/miredminote91.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/miredminote91.jpeg",
              img2: "assets/miredminote91.jpeg",
              img3: "assets/miredminote92.jpeg",
              img4: "assets/miredminote9.jpeg",
              categories: "Electronic",
              company: "xiomi",
              name: "Redmi",
              previousprice: "17100",
              price: "16800"),
          products1: Product(
              previousprice: "21000",
              price: "19500",
              name: "RedmiNote 9",
              icon: ("assets/miredminote9.jpeg")),
        ),
        RowHomescreen(
          products1: Product(
              previousprice: "25000",
              price: "19800",
              name: "Infinix ",
              icon: ("assets/infinix2.jpeg")),
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/infinix2.jpeg",
              img2: "assets/infinix3.jpeg",
              img3: "assets/infinix.jpeg",
              img4: "assets/infinix2.jpeg",
              categories: "Electronic",
              company: "Xiomi",
              name: "RedmiNote ",
              previousprice: "25000",
              price: "19800"),
          products2: Product(
            previousprice: "22500",
            price: "20000",
            name: "Vivo",
            icon: ("assets/vivoz1x1.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/vivoz1x1.jpeg",
              img2: "assets/vivoz1x.jpeg",
              img3: "assets/vivo.jpeg",
              img4: "assets/vivoz1.jpeg",
              categories: "Electronic",
              company: "vivo",
              name: "Vivo x1",
              previousprice: "22500",
              price: "20000"),
        ),
        RowHomescreen(
          products1: Product(
              previousprice: "25000",
              price: "19800",
              name: "RedmiNote ",
              icon: ("assets/miredminote92.jpeg")),
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/pocox.jpeg",
              img2: "assets/pocox1.jpeg",
              img3: "assets/pocox2.jpeg",
              img4: "assets/pocox.jpeg",
              categories: "Electronic",
              company: "Xiomi",
              name: "Poco x2 ",
              previousprice: "25000",
              price: "19800"),
          products2: Product(
            previousprice: "22800",
            price: "20200",
            name: "Infinix",
            icon: ("assets/infinix.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/infinix.jpeg",
              img2: "assets/infinix1.jpeg",
              img3: "assets/infinix2.jpeg",
              img4: "assets/infinix1.jpeg",
              categories: "Electronic",
              company: "Infinix",
              name: "Infinix hot",
              previousprice: "22500",
              price: "20000"),
        ),
        RowHomescreen(
          products1: Product(
              previousprice: "29000",
              price: "28800",
              name: "Vivo x6",
              icon: ("assets/vivoz1x.jpeg")),
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/vivoz1x.jpeg",
              img2: "assets/vivoz1x1.jpeg",
              img3: "assets/vivoz1x2.jpeg",
              img4: "assets/vivoz1x.jpeg",
              categories: "Electronic",
              company: "Vivo",
              name: "Vivo x6 ",
              previousprice: "29000",
              price: "28800"),
          products2: Product(
            previousprice: "22500",
            price: "20000",
            name: "Vivo",
            icon: ("assets/vivo.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/vivo.jpeg",
              img2: "assets/vivoz1x.jpeg",
              img3: "assets/vivoz1x1.jpeg",
              img4: "assets/vivoz1.jpeg",
              categories: "Electronic",
              company: "vivo",
              name: "Vivo x1",
              previousprice: "22500",
              price: "20000"),
        ),
        RowHomescreen(
          products1: Product(
              previousprice: "25000",
              price: "19800",
              name: "Poco x ",
              icon: ("assets/pocox.jpeg")),
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/pocox.jpeg",
              img2: "assets/pocox1.jpeg",
              img3: "assets/pocox2.jpeg",
              img4: "assets/pocox.jpeg",
              categories: "Electronic",
              company: "Xiomi",
              name: "Poco x2 ",
              previousprice: "25000",
              price: "19800"),
          products2: Product(
            previousprice: "22800",
            price: "20200",
            name: "Infinix",
            icon: ("assets/infinix1.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/infinix1.jpeg",
              img2: "assets/infinix1.jpeg",
              img3: "assets/infinix2.jpeg",
              img4: "assets/infinix.jpeg",
              categories: "Electronic",
              company: "Infinix",
              name: "Infinix hot",
              previousprice: "22500",
              price: "20000"),
        ),
        RowHomescreen(
          products1: Product(
              previousprice: "25000",
              price: "19800",
              name: "Poco x2 ",
              icon: ("assets/pocox2.jpeg")),
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/pocox2.jpeg",
              img2: "assets/pocox1.jpeg",
              img3: "assets/pocox2.jpeg",
              img4: "assets/pocox.jpeg",
              categories: "Electronic",
              company: "Xiomi",
              name: "Poco x2 ",
              previousprice: "25000",
              price: "19800"),
          products2: Product(
            previousprice: "23500",
            price: "22000",
            name: "Infinix",
            icon: ("assets/infinix2.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/infinix2.jpeg",
              img2: "assets/infinix1.jpeg",
              img3: "assets/infinix2.jpeg",
              img4: "assets/infinix1.jpeg",
              categories: "Electronic",
              company: "Infinix",
              name: "Infinix hot",
              previousprice: "23500",
              price: "22000"),
        ),
        RowHomescreen(
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/miredminote9.jpeg",
              img2: "assets/miredminote91.jpeg",
              img3: "assets/miredminote92.jpeg",
              img4: "assets/miredminote91.jpeg",
              categories: "Electronic",
              company: "Xiomi",
              name: "Redmi",
              previousprice: "15000",
              price: "14500"),
          products2: Product(
            previousprice: "17100",
            price: "16800",
            name: "Xiomi",
            icon: ("assets/miredminote91.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/miredminote91.jpeg",
              img2: "assets/miredminote91.jpeg",
              img3: "assets/miredminote92.jpeg",
              img4: "assets/miredminote9.jpeg",
              categories: "Electronic",
              company: "xiomi",
              name: "Redmi",
              previousprice: "17100",
              price: "16800"),
          products1: Product(
              previousprice: "21000",
              price: "19000",
              name: "RedmiNote 9",
              icon: ("assets/miredminote9.jpeg")),
        ),
        RowHomescreen(
          products1: Product(
              previousprice: "25000",
              price: "19800",
              name: "Infinix ",
              icon: ("assets/infinix2.jpeg")),
          productdescription1: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/infinix2.jpeg",
              img2: "assets/infinix3.jpeg",
              img3: "assets/infinix.jpeg",
              img4: "assets/infinix2.jpeg",
              categories: "Electronic",
              company: "Xiomi",
              name: "RedmiNote ",
              previousprice: "25000",
              price: "19800"),
          products2: Product(
            previousprice: "22500",
            price: "20000",
            name: "Vivo",
            icon: ("assets/vivoz1x1.jpeg"),
          ),
          productdescription2: ProductDetail(
              description:
                  "The phone is powered by Octa core (2 GHz, Quad core,Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor.,It runs on the Qualcomm Snapdragon 665 Chipset",
              img1: "assets/vivoz1x1.jpeg",
              img2: "assets/vivoz1x.jpeg",
              img3: "assets/vivo.jpeg",
              img4: "assets/vivoz1.jpeg",
              categories: "Electronic",
              company: "vivo",
              name: "Vivo x1",
              previousprice: "22500",
              price: "20000"),
        ),
      ],
    );
  }
}
