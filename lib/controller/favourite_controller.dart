import 'package:get/get.dart';

class FavouriteController extends GetxController {
  var fruitList = ['Apple', 'Banana', 'Mango', 'Grapes'].obs;
  var favouriteList = <String>[].obs; 

  void addFavourite(String fruit) {
  favouriteList.add(fruit);
  print('Added $fruit to favourites: $favouriteList');
  update(); // Force update
}

void removeFavourite(String fruit) {
  favouriteList.remove(fruit);
  print('Removed $fruit from favourites: $favouriteList');
  update(); // Force update
}

}
