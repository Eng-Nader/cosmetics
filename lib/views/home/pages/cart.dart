import '../../../core/logic/helper_methods.dart';
import '../../../core/ui/app_image.dart';
import 'checkout.dart';
import '../widgets/cart_view.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  const Text(
                    'My Cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => goTo(const CheckoutPage()),

                    child: const AppImage(image: 'card.svg'),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              const Text(
                'You have 4 products in your cart',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 34,
              ),

              const CartView(),
            ],
          ),
        ),
      ),
    );
  }
}
