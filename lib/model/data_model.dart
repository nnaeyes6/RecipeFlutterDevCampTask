// ignore_for_file: public_member_api_docs, sort_constructors_first
class DatatModel {
  late String recipeName;
  late String recipeImage;
  late String recipeIngredients;
  List<Recipes> recipes;
  DatatModel({
    required this.recipeName,
    required this.recipeImage,
    required this.recipeIngredients,
    required this.recipes,
  });
}
// class recipe{}

List<DatatModel> datalist = [
  DatatModel(
    recipeName: "Egg Sauce",
    recipeImage: "images/recipe1.jpg",
    recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem",
    recipes: [
      Recipes(
          newRecipeName: 'Egg Sauce',
          newRecipeImage: "images/recipe1.jpg",
          recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem")
    ],
  ),
  DatatModel(
    recipeName: "Pie Sauce",
    recipeImage: "images/recipe2.jpg",
    recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem",
    recipes: [
      Recipes(
          newRecipeName: 'Pie Sauce',
          newRecipeImage: "images/recipe2.jpg",
          recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem")
    ],
  ),
  DatatModel(
    recipeName: "Patatoe sauce",
    recipeImage: "images/recipe3.jpg",
    recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem",
    recipes: [
      Recipes(
          newRecipeName: 'Patatoe Sauce',
          newRecipeImage: "images/recipe3.jpg",
          recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem")
    ],
  ),
  DatatModel(
    recipeName: "Yam Sauce",
    recipeImage: "images/recipe4.jpg",
    recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem",
    recipes: [
      Recipes(
          newRecipeName: 'Yam Sauce',
          newRecipeImage: "images/recipe4.jpg",
          recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem")
    ],
  ),
  DatatModel(
    recipeName: "Fruit meal",
    recipeImage: "images/recipe5.jpg",
    recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem",
    recipes: [
      Recipes(
          newRecipeName: 'Fruit meal',
          newRecipeImage: "images/recipe5.jpg",
          recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem")
    ],
  ),
  DatatModel(
    recipeName: "Salad Sauce",
    recipeImage: "images/recipe6.jpg",
    recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem",
    recipes: [
      Recipes(
          newRecipeName: 'Salad Sauce',
          newRecipeImage: "images/recipe6.jpg",
          recipeIngredients: "Lorem\nLorem\nLorem\nLorem\nLorem")
    ],
  ),
];

class Recipes {
  late String newRecipeName;
  late String newRecipeImage;
  late String recipeIngredients;
  Recipes({
    required this.newRecipeName,
    required this.newRecipeImage,
    required this.recipeIngredients,
  });
}
