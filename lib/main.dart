import 'views/splash.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/logic/helper_methods.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Cosmetics());
}

class Cosmetics extends StatelessWidget {
  const Cosmetics({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(390, 844),
      child: MaterialApp(
        navigatorKey: navKey,

        theme: ThemeData(
          textTheme: const TextTheme(
            bodyMedium: TextStyle(
              color: Color(0xff434C6D),
            ),
          ),

          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffD75D72)),
          scaffoldBackgroundColor: const Color(
            0xffD9D9D9,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xffD75D72),
            ),
          ),

          inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.r,
              vertical: 0,
            ),
            suffixIconColor: const Color(0xff8E8EA9),
            labelStyle: const TextStyle(
              color: Color(0xff8E8EA9),
            ),
            hintStyle: TextStyle(
              color: const Color(0xff8E8EA9),
              fontSize: 12.sp,
            ),
            floatingLabelStyle: const TextStyle(
              fontSize: 14,
            ),

            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
            errorStyle:  TextStyle(height: .1.h, fontSize: 12.sp),
          ),

          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              backgroundColor: const Color(0xffD75D72),
              fixedSize:  Size.fromHeight(65.h),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60.r),
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: Color(0xff5a6690),
    ),
  );
}
