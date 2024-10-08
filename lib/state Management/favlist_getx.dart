import 'package:flutter/material.dart';
import 'package:getx_yt/controller/favourite_controller.dart';
import 'package:get/get.dart';

class FavlistGetx extends StatefulWidget {
  const FavlistGetx({super.key});

  @override
  State<FavlistGetx> createState() => _FavlistGetxState();
}

class _FavlistGetxState extends State<FavlistGetx> {
  final favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Favourite List'),
      ),
      body:ListView.builder(
          itemCount: favouriteController.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (favouriteController.favouriteList
                      .contains(favouriteController.fruitList[index])) {
                    favouriteController.removeFavourite(favouriteController.fruitList[index]);
                  } else {
                    favouriteController.addFavourite(favouriteController.fruitList[index]);
                  }
                },
                title: Text(favouriteController.fruitList[index]),
                trailing: Obx(
                  () => Icon(
                  Icons.favorite,
                  color: favouriteController.favouriteList
                          .contains(favouriteController.fruitList[index])
                      ? Colors.red
                      : Colors.grey,
                ),
                )
              ),
            );
          },
        ),
      
    );
  }
}
