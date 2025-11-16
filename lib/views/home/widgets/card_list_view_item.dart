import '../../../core/ui/app_image.dart';
import '../pages/cart.dart';
import 'custom_add_remove_button.dart';
import 'package:flutter/material.dart';

class CardListViewItem extends StatelessWidget {
  const CardListViewItem({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AppImage(
                image: cardModel.image,
                color: null,
                height: 115,
                width: 100,
              ),
            ),
            const Positioned(
              top: 10,
              left: 10,
              child: AppImage(
                image: 'out.svg',
                color: null,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardModel.title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              cardModel.subTitle,
              style: TextStyle(
                color: const Color(0xff3B4569).withValues(alpha: .8),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              cardModel.price,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),

            const CustomAddRemoveButton(),
          ],
        ),
      ],
    );
  }
}
