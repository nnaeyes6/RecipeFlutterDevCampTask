// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:recipe_app_devcamp/model/data_model.dart';

class IngredientsNavPage extends StatefulWidget {
  final DatatModel? recipe;

  const IngredientsNavPage({
    Key? key,
    this.recipe,
  }) : super(key: key);

  @override
  State<IngredientsNavPage> createState() => _IngredientsNavPageState();
}

class _IngredientsNavPageState extends State<IngredientsNavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          color: Colors.cyan.shade900,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BottomAppBar()));
                  },
                  icon: const Icon(Icons.arrow_back_ios_new)),
              Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        'Ingredients',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      )),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
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
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                widget.recipe!.recipeName.toString(),
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(
                                child: Text(
                                  widget.recipe!.recipeIngredients.toString(),
                                  style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              CircleAvatar(
                                radius: 50,
                                foregroundImage: AssetImage(
                                  widget.recipe!.recipeImage.toString(),
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
                    CircleAvatar(
                      radius: 80,
                      foregroundImage: AssetImage(
                        widget.recipe!.recipeImage.toString(),
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
        ),
      ),
    );
  }
}
