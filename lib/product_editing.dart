import 'package:flutter/material.dart';
import 'package:nexnova_technologies/widgets/custom_textfield.dart';

class ProductEditing extends StatefulWidget {
  const ProductEditing({super.key});

  @override
  State<ProductEditing> createState() => _ProductEditingState();
}

class _ProductEditingState extends State<ProductEditing> {
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
          'Edit Products',
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
            onTap: () {},
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff082b51)),
              child: const Center(
                child: Text(
                  'UPDATE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
