import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String categoryName = 'General';

  final categoryList = [
    'General',
    'Entertainment',
    'Health',
    'Sports',
    'Business',
    'Technology'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryList.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: GestureDetector(
                        onTap: () {
                          categoryName = categoryList[index];
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              color: categoryName == categoryList[index]
                                  ? Colors.blue
                                  : const Color.fromARGB(255, 120, 119, 119)),
                          child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                categoryList[index],
                                style: const TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
