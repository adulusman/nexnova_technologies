import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexnova_technologies/product_adding.dart';
import 'package:nexnova_technologies/product_editing.dart';
import 'package:nexnova_technologies/product_show.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String price = '100';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const ProductAdding(),
              ));
        },
      ),
      appBar: AppBar(
          backgroundColor: const Color(0xff082b51),
          title: const Text(
            'NexNova Technologies',
            style: TextStyle(color: Colors.white),
          )),
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const ProductShowing(),
                    ));
              },
              child: ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://m.media-amazon.com/images/G/31/img24/Beauty/BAU/Unrec/Headers/199_unrec_header._SX621_QL85_FMpng_.png')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey),
                ),
                title: Text(
                  'Nivia and Dove  INR$price',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                    'New Dove Eventone Deodorant Roll-on gives you Even toned..'),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const ProductEditing(),
                                ));
                          },
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
