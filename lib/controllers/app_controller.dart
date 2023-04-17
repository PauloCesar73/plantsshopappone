import 'package:get/get.dart';
import 'package:plantshopapp/models/plants.dart';

class AppController extends GetxController {
RxInt selectedIndex = 0.obs;
RxList<Plant> favorites = <Plant>[].obs;

  //Get the favorated items
  void getFavoritedPlants(){
    List<Plant> travelList = Plant.plantList;
    travelList.where((element) => element.isFavorated == true).toList().obs;
    favorites.value = travelList;
  }

  //Get the cart items
  RxList<Plant> addedToCartPlants(){
    List<Plant> selectedPlants = Plant.plantList;
    return selectedPlants.where((element) => element.isSelected == true).toList().obs;
  }
//final ProductController controller = Get.put(ProductController());
}