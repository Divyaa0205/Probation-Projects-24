import 'package:ecommerce_app/Screens/buy.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/Components/product.dart';
//import 'package:ecommerce_app/Components/navbar.dart';
class ProductDetail extends StatelessWidget {
  final Product product;
  final List<Product> allProducts;
  const ProductDetail({required this.product, required this.allProducts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(product.name,
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.share, color: Colors.black, size: 20,),
                  onPressed: () {},
                ),
              ),
            ),
          ],
          elevation: 0, 
        ),
      backgroundColor: Colors.white,
      //bottomNavigationBar: Navbar(),
      body: SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(product.image, height: 250),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.price,
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Including taxes and duties',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child:Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: 13),
                      ),
                      child: Text('Add to Cart',style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) => Buy(product: product)));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(vertical: 13),
                      ),
                      child: Text('Buy Now',style: TextStyle(color: Colors.white, fontSize: 15),),
                    ),
                  ),
                ],
              ),
            ),
          ],
         ),
      ),
    );
  }
}