import '../pages/cart.dart';
import 'card_list_view_item.dart';
import 'package:flutter/material.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});
  final list = const [
    CardModel(
      'https://i.pinimg.com/736x/b2/bd/a7/b2bda7c7d655da647c403505c48c8744.jpg',
      '100 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),
    CardModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      '200 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),

    CardModel(
      'https://i.pinimg.com/736x/b2/bd/a7/b2bda7c7d655da647c403505c48c8744.jpg',
      '300 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),
    CardModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      '400 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),
    CardModel(
      'https://i.pinimg.com/736x/b2/bd/a7/b2bda7c7d655da647c403505c48c8744.jpg',
      '500 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),
    CardModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      '600 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),
    CardModel(
      'https://i.pinimg.com/736x/b2/bd/a7/b2bda7c7d655da647c403505c48c8744.jpg',
      '700 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),
    CardModel(
      'https://d1flfk77wl2xk4.cloudfront.net/Assets/38/067/XXL_p0189906738.jpg',
      '800 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),
    CardModel(
      'https://i.pinimg.com/736x/b2/bd/a7/b2bda7c7d655da647c403505c48c8744.jpg',
      '900 EGP',
      'Ultra rich mascara for lashes',
      'Note Cosmetics',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CardListViewItem(
          cardModel: list[index],
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Color(0xffB3B3C1),
          endIndent: 20,
          indent: 20,
        );
      },
      itemCount: list.length,
    );
  }
}
