import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexnova_technologies/product_editing.dart';

class ProductShowing extends StatefulWidget {
  const ProductShowing({super.key});

  @override
  State<ProductShowing> createState() => _ProductShowingState();
}

class _ProductShowingState extends State<ProductShowing> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color(0xff082b51),
        title: const Text(
          'Edit Products',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://m.media-amazon.com/images/G/31/img24/Beauty/BAU/Unrec/Headers/199_unrec_header._SX621_QL85_FMpng_.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xff082b51)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Product Name',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              )
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                '₹100',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const ProductEditing(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff082b51)),
                  child: const Center(
                    child: Text(
                      'EDIT',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.red),
                  child: const Center(
                    child: Text(
                      'DELETE',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
