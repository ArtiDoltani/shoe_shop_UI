import 'package:flutter/material.dart';
import 'package:online_shop/Pages/DetailScreen.dart';
import 'package:online_shop/Pages/Models/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(
        color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.menu,
          //       color: Colors.black,
          //       size: 30,
          //     )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 40,
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 15),
                child: Container(
                  width: 500,
                  height: 230,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          image: AssetImage("images/3.jpg"),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "New Release",
                            style:
                                TextStyle(fontSize: 15, color: Colors.orange),
                          ),
                          Text(
                            "Nike Air ",
                            style: textStyle,
                          ),
                          Text(
                            "Max 90",
                            style: textStyle,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "Shop Now",
                              ),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.orange,
                              ))
                        ]),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Row(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Men's",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text("See all")
                  ],
                ),
              ),
              // Creating Grid view
              SizedBox(
                height: 600,
                child: GridView.builder(
                    itemCount: shoe.length,
                    // ignore: prefer_const_constructors
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoeDetails(
                                    shoedetail:shoe[index]
                                  )));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade100,
                            ),
                            child: Column(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Image.asset(shoe[index].image)),
                                const Text(
                                  "Men's Shoe",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.orange),
                                ),
                                Text(
                                  shoe[index].text,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(shoe[index].price),
                        
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(14))),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      );
                    }),
              ),
            ],
          ),
        ),
        drawer: Drawer(
       child: ListView(children: [
        DrawerHeader(child: CircleAvatar(backgroundImage: AssetImage("images/p1.png",),)),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
        )
       ],)

        )
      ),
    );
  }
}
