import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:recipo_recipe_app/screens/search_screen.dart';
import 'package:recipo_recipe_app/screens/recipe_detail_screen.dart';
import '../models/recipe_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  bool isLoading = true;
  List<RecipeModel> recipeList = <RecipeModel>[];
  TextEditingController searchController = TextEditingController();
  List recipeCatList = [
    {
      "imgUrl": "https://images.unsplash.com/photo-1593560704563-f176a2eb61db",
      "heading": "Chilli Food"
    },
    {
      "imgUrl": "https://images.unsplash.com/photo-1593560704563-f176a2eb61db",
      "heading": "Chilli Food"
    },
    {
      "imgUrl": "https://images.unsplash.com/photo-1593560704563-f176a2eb61db",
      "heading": "Chilli Food"
    },
    {
      "imgUrl": "https://images.unsplash.com/photo-1593560704563-f176a2eb61db",
      "heading": "Chilli Food"
    }
  ];

  getRecipes(String query) async {
    String url =
        "https://api.edamam.com/search?q=$query&app_id=YOUR_APP_ID&app_key=YOUR_APP_KEY";

    Response response = await get(Uri.parse(url));
    Map data = jsonDecode(response.body);

    setState(() {
      data["hits"].forEach((element) {
        RecipeModel recipeModel = RecipeModel.fromMap(element["recipe"]);
        recipeList.add(recipeModel);
      });
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getRecipes("Momo");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff213A50), Color(0xff071938)])),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                //  Search Bar
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24)),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if ((searchController.text).replaceAll(" ", "") ==
                                "") {
                              debugPrint("Blank search");
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SearchScreen(searchController.text)));
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(3, 0, 7, 0),
                            child: const Icon(
                              Icons.search,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: searchController,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Let's Cook Something!"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WHAT DO YOU WANT TO COOK TODAY?",
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Let's Cook Something New!",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                    child: isLoading
                        ? const CircularProgressIndicator()
                        : ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: recipeList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RecipeDetailScreen(
                                        recipe: recipeList[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Card(
                                  margin: const EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 0.0,
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.network(
                                            recipeList[index].appImgUrl,
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                            height: 200,
                                          )),
                                      Positioned(
                                          left: 0,
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5,
                                                      horizontal: 10),
                                              decoration: const BoxDecoration(
                                                  color: Colors.black26),
                                              child: Text(
                                                recipeList[index].appLabel,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ))),
                                      Positioned(
                                        right: 0,
                                        height: 40,
                                        width: 80,
                                        child: Container(
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10))),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Icon(
                                                    Icons.local_fire_department,
                                                    size: 15,
                                                  ),
                                                  Text(recipeList[index]
                                                      .appCalories
                                                      .toString()
                                                      .substring(0, 6)),
                                                ],
                                              ),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            })),

                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: recipeCatList.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        child: InkWell(
                          onTap: () {},
                          child: Card(
                            margin: const EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            elevation: 0.0,
                            child: Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(18.0),
                                    child: Image.network(
                                      recipeCatList[index]["imgUrl"],
                                      fit: BoxFit.cover,
                                      width: 200,
                                      height: 250,
                                    )),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  top: 0,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: const BoxDecoration(
                                        color: Colors.black26),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          recipeCatList[index]["heading"],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
