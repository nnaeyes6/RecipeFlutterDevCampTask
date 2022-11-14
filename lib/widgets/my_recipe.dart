import 'package:flutter/material.dart';
import 'package:recipe_app_devcamp/model/data_model.dart';

import '../navbar/ingredients_nav_page.dart';

class MyRecipe extends StatelessWidget {
  const MyRecipe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.yellowAccent.shade700,
            )),
        title: const Title(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.restaurant_menu_outlined,
                size: 30,
                color: Color.fromRGBO(255, 214, 0, 1),
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: SingleScroll(),
      ),
    );
  }
}

class SingleScroll extends StatelessWidget {
  const SingleScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Padding(
              padding:
                  EdgeInsets.only(top: 10.0, left: 20, right: 20, bottom: 10),
              child: Text(
                "Fine Dining",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 22,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
        const RecipeGridView(),
        const SizedBox(
          height: 10,
        ),
        const CookifyIngredients(),
        const SizedBox(
          height: 5,
        ),
        const CookIsFunImage(),
      ]),
    );
  }
}

class CookIsFunImage extends StatelessWidget {
  const CookIsFunImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 450,
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: const Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                BlendMode.multiply,
              ),
              image: const AssetImage('images/egg2.jpg'),
              fit: BoxFit.cover)),
      child: Container(
        margin: const EdgeInsets.only(left: 180, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Cook is Fun",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(right: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 40,
                    foregroundImage: AssetImage(
                      'images/recipe12.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Fruit Salad mixed\nwith milk",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                const Text(
                  "Try these meals!",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage(
                        'images/recipe8.jpg',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 50,
                      foregroundImage: AssetImage(
                        'images/recipe11.jpg',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                CircleAvatar(
                  radius: 50,
                  foregroundImage: AssetImage(
                    'images/recipe10.jpg',
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 50,
                  foregroundImage: AssetImage(
                    'images/recipe7.jpg',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CookifyIngredients extends StatelessWidget {
  const CookifyIngredients({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.yellowAccent.shade700,
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Center(
        child: Text(
          "Cookify Ingredients",
          style: TextStyle(
              color: Color.fromARGB(255, 48, 42, 42),
              fontWeight: FontWeight.w800,
              fontSize: 16,
              fontFamily: 'Inter'),
        ),
      ),
    );
  }
}

class RecipeGridView extends StatelessWidget {
  const RecipeGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: datalist.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: ((context, index) => InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => IngredientsNavPage(
                        recipe: datalist[index],
                      )));
            },
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(360),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        offset: const Offset(
                          0.0,
                          10.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: -6.0,
                      ),
                    ],
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.35),
                          BlendMode.multiply,
                        ),
                        image: AssetImage(datalist[index].recipeImage),
                        fit: BoxFit.cover)),
              ),
            ),
          )),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 60),
      child: const Text(
        'COOKFUN',
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 26,
          color: Color.fromARGB(255, 48, 42, 42),
        ),
      ),
    );
  }
}
