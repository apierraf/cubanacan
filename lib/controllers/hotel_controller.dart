import 'package:cubanacan/models/hotel_model.dart';
import 'package:get/get.dart';

class HotelController extends GetxController {
  var hotelList = <Hotel>[].obs;

  @override
  void onInit() {
    fetchHotel();
    super.onInit();
  }

  void fetchHotel() {
    hotelList.add(
      Hotel(
        1,
        "Hotel Cohiba",
        dummyText,
        "La Habana",
        40,
        4,
        listImagenes[0],
      ),
    );
    hotelList.add(
      Hotel(
        2,
        "IberoStar Varadero",
        dummyText,
        "Varadero",
        40,
        5,
        listImagenes[1],
      ),
    );
    hotelList.add(
      Hotel(
        3,
        "Atlántico Guardalavaca",
        dummyText,
        "Holguin",
        40,
        4,
        listImagenes[2],
      ),
    );
    hotelList.add(
      Hotel(
        4,
        "Hotel Gran Manzana",
        dummyText,
        "La Habana",
        40,
        4,
        listImagenes[3],
      ),
    );
    hotelList.add(
      Hotel(
        5,
        "Cayo Guillermo",
        dummyText,
        "Ciego de Avila",
        40,
        4,
        listImagenes[4],
      ),
    );
    hotelList.add(
      Hotel(
        5,
        "Melia Santiago",
        dummyText,
        "Santiago de Cuba",
        40,
        4,
        listImagenes[5],
      ),
    );
  }

  String dummyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

  var listImagenes = [
    "https://www.melia.com/dam/jcr:2b4b05c1-860c-4cc0-adef-235b896ed3f8/003MeliaCohiba-General.jpg",
    "https://hotels1.cdn.iberostar.com/uploads/image/50094/crops/1366:797/1366/image.jpg",
    "http://www.ahora.cu/images/stories/2020/Diciembre/Club-Amigo-Atlantico-Guardalavaca.jpg",
    "https://images.blacktomato.com/2018/11/PQbRVCIm-WEB-Rooftop-Pool.jpg",
    "https://www.enjoycuba.travel/photos/hotel/hotel_photos/3298_original.jpg",
    "https://media.solwayscuba.com/photos/Hotel/2018/hotel/hotel-melia-santiago-de-cuba-13-0.jpg"
  ];
}
