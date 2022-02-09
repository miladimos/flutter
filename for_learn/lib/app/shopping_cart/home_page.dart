import 'package:flutter/material.dart';
import 'package:for_learn/app/shopping_cart/models/product_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Shopping Cart"),
          leading: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {},
                ),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.red,
                  child: Text("0"),
                ),
              ),
            ],
          )),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: FutureBuilder<List<ProductModel>>(
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          onTap: null,
                          title: Container(
                            height: 300,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image(
                                    image: NetworkImage(
                                        snapshot.data![index].image),
                                  ),
                                  flex: 2,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Expanded(
                                  child: Text(
                                    snapshot.data![index].name,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${snapshot.data![index].price}\$',
                                        style: TextStyle(
                                            color: snapshot.data![index].off > 0
                                                ? Colors.red
                                                : Colors.black,
                                            decoration:
                                                snapshot.data![index].off > 0
                                                    ? TextDecoration.lineThrough
                                                    : TextDecoration.none),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      snapshot.data![index].off > 0
                                          ? Text(
                                              '${(snapshot.data![index].price - (snapshot.data![index].price * snapshot.data![index].off)).toStringAsFixed(2)}')
                                          : Container()
                                    ],
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.shopping_cart))
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            future: ProductModel.loadData(),
          ),
        ),
      ),
    );
  }
}
