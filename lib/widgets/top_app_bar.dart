import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Find Your",
            style: TextStyle(color: Colors.black87, fontSize: 25.0),
          ),
          const SizedBox(height: 5),
          const Text("Inspiration",
              style: TextStyle(color: Colors.black, fontSize: 40.0)),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(244, 243, 243, 1),
                borderRadius: BorderRadius.circular(15.0)),
            padding: const EdgeInsets.all(5.0),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black87,
                  ),
                  hintText: "Search yo're locking for",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
