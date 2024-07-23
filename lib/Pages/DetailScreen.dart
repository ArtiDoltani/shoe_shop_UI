import 'package:flutter/material.dart';
import 'package:online_shop/Pages/Models/products.dart';
import 'package:online_shop/Pages/app_buttons.dart';
import 'package:readmore/readmore.dart';

class ShoeDetails extends StatelessWidget {
  Products shoedetail;
  List<String> sizelist = ['40', '41', '42', '45', '48'];
  String readmore =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  ShoeDetails({super.key, required this.shoedetail});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Men's Shoes",
            style: TextStyle(color: Colors.orange, fontSize: 25),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                ))
          ],
        ),
        body: Stack(
          children: [
            // Image  Container
            Container(
                //  width: double.infinity,
                color: Colors.grey.shade300,
                child: Image.asset(shoedetail.image, width: 500, height: 250,fit: BoxFit.cover,)),

            //  Description Container
            Padding(
              padding: const EdgeInsets.only(top: 240.0),
              child: Container(
                // Here goes decoration
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                // Description
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoedetail.text,
                        style: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                                 ReadMoreText(
                        readmore,
                        trimLines: 3,
                    
                        trimCollapsedText: "Read more",
                        trimExpandedText: "Read less",
                        textAlign: TextAlign.justify,
                        trimMode: TrimMode.Line,
                        moreStyle: TextStyle(color: Colors.orange, fontSize: 18, fontWeight: FontWeight.bold),
                        lessStyle: TextStyle(color: Colors.orange, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
              
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Size:",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text("EU US UK")
                        ],
                      ),
                      const SizedBox(height: 20,),
                      // Size Buttons
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      
                      AppButtons(text: "41"),
                       AppButtons(text: "42"),
                        AppButtons(text: "44"),
                         AppButtons(text: "46"),
                          AppButtons(text: "48"),
              
                    ],)
                    ],
              
                  ),
                ),
              ),
            ),

            // Last Container

            Padding(
              padding: const EdgeInsets.only(top: 600.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Price",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          "${shoedetail.price}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 35),
                        )
                      ],
                    ),
                    // Creating Button
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Add to Bag"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.orange,
                        // textStyle: TextStyle(fontSize: 100)
                      ),
                    )
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
