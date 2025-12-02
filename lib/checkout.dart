import 'package:cosmentics/core/ui/app_back_button.dart';
import 'package:cosmentics/core/ui/app_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/ui/app_button.dart';
import 'package:flutter/material.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: AppBackButton(
          startSpacing: 16.r,
        ),
        title: Text(
          'Check out',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xff434C6D),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24.h,
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 41.r),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),

                  color: const Color(0x4329d3da).withValues(alpha: .1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      'Delivery to',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    _Tile(
                      title: 'Home',
                      subTitle: 'Home Mansourea , 14 Porsaid S',
                      traling: 'check_out_arrow.svg',
                      padding: 15.r,
                    ),
                    const _Tile(
                      title: '**************256',
                      traling: 'check_out_arrow.svg',
                      leading: 'misa.svg',
                    ),

                    SizedBox(height: 40.h),
                    Text(
                      'Payment Method',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),

                    const _Tile(
                      title: 'Add vaucher',
                      leading: 'voucher.svg',
                    ),
                    Text(
                      '_ \t' * 100,
                      maxLines: 1,
                    ),

                    const Divider(
                      thickness: 1,
                      color: Color(0xff73B9BB),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TOTAL + VAT',
                        ),
                        Text(
                          '16.100 EGP',
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    AppButton(title: 'ORDER', onPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    super.key,
    required this.title,
    this.leading,
    this.traling,
    this.subTitle,
    this.padding = 0,
  });
  final String title;
  final String? subTitle, leading, traling;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(padding).copyWith(left: 10, right: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(30.r),
        side: const BorderSide(
          color: Color(0xff73B9BB),
          width: 1.5,
        ),
      ),
      leading: leading != null
          ? AppImage(image: leading!)
          : Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
      title: Text(
        title,
        style: TextStyle(
          color: const Color(0xff434C6D),
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: subTitle != null
          ? Text(
              subTitle!,
              style: TextStyle(
                color: const Color(0xff434C6D),
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          : null,
      trailing: traling != null
          ? AppImage(
              image: traling!,
            )
          : FilledButton(
              style: FilledButton.styleFrom(
                visualDensity: VisualDensity.compact,
              ),
              onPressed: () {},
              child: const Text(
                'Apply',
              ),
            ),
    );
  }
}
