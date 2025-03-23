import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BottomNavigationBarEntity {
  final String inActiveImage, activeImage;
  final String name;

  BottomNavigationBarEntity({required this.inActiveImage, required this.activeImage, required this.name});
}

List<BottomNavigationBarEntity> getBottomNavigationBarItems(BuildContext context) {
  return [
    BottomNavigationBarEntity(
      inActiveImage: Assets.imagesOutlineHomeUnSelected,
      activeImage: Assets.imagesBoldHomeSelected,
      name: S.of(context).home,
    ),
    BottomNavigationBarEntity(
      inActiveImage: Assets.imagesOutlineProductsUnSelected,
      activeImage: Assets.imagesBoldProductsSelected,
      name: S.of(context).products,
    ),
    BottomNavigationBarEntity(
      inActiveImage: Assets.imagesOutlineShoppingCartUnSelcted,
      activeImage: Assets.imagesBoldShoppingCartSelected,
      name: S.of(context).cart,
    ),
    BottomNavigationBarEntity(
      inActiveImage: Assets.imagesOutlineUserUnSelected,
      activeImage: Assets.imagesBoldUserSelected,
      name: S.of(context).profile,
    ),
  ];
}
