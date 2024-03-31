import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexnova_technologies/product_editing.dart';
import 'package:nexnova_technologies/widgets/custom_textfield.dart';

class ProductAdding extends StatefulWidget {
  const ProductAdding({super.key});

  @override
  State<ProductAdding> createState() => _ProductAddingState();
}

class _ProductAddingState extends State<ProductAdding> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
        centerTitle: true,
        backgroundColor: const Color(0xff082b51),
        title: const Text(
          'Add Products',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                CustomTextField(controller: nameController, label: 'Image URL'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                controller: nameController, label: 'Product Name'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
                controller: nameController, label: 'description'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(controller: nameController, label: 'Price'),
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {
            
            },
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff082b51)),
              child: const Center(
                child: Text(
                  'ADD',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
