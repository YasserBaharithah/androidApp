import 'package:flutter/material.dart';
import 'package:flutter_examples/model/product_list.dart';

class ProductBuild extends StatelessWidget {
  const ProductBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.yellow,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (val) {
              return AlertDialog(
                backgroundColor: Colors.white,
                title: const Text('Hi There !'),
                content: const Text('Are you sure'),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'YES',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'NO',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: const Text('Add'),
      ),
      title: const Text(
        'Color choosen',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: const Icon(
        Icons.square,
        color: Colors.blueAccent,
      ),
    );
  }
}
