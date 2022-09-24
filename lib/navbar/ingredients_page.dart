import 'package:flutter/material.dart';

class IngredientsPage extends StatelessWidget {
  const IngredientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 5, left: 20),
                      child: const Text(
                        'Ingredients',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      )),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 20),
                height: MediaQuery.of(context).size.height / 1.5,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      margin:
                          const EdgeInsets.only(right: 10, left: 10, top: 30),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Pie\nBlackberry ",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Center(
                                child: Text(
                                  "Lorem\nLorem\nLorem\nLorem\nLorem ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              CircleAvatar(
                                radius: 40,
                                foregroundImage: AssetImage(
                                  'images/recipe12.jpg',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const CircleAvatar(
                      radius: 80,
                      foregroundImage: AssetImage(
                        'images/recipe12.jpg',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "120cl",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: MediaQuery.of(context).size.width / 1,
                    margin: const EdgeInsets.all(5),
                    child: const Text(
                      "Tell us Your Experience after Cookfun. This meal is suitable for breakfast, lunch and dinner.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
