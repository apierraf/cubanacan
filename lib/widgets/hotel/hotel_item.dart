import '/models/hotel_model.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class HotelItem extends StatelessWidget {
  final Hotel hotel;

  const HotelItem({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Hero(
        tag: hotel.nombre,
        child: Material(
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            onTap: () => Get.toNamed("details_hotel", arguments: hotel),
            child: GridTile(
              footer: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Colors.black54,
                ),
                child: ListTile(
                  title: Text(
                    hotel.nombre,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        hotel.categoria.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: hotel.imagen,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
