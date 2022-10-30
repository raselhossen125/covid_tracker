import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CountryPageShimmerEffect extends StatelessWidget {
  const CountryPageShimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(0.80),
          highlightColor: Colors.grey.withOpacity(0.50),
          child: Padding(
            padding: EdgeInsets.only(bottom: 8.r),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Colors.black.withOpacity(0.10))),
              child: SizedBox(
                height: 65.h,
                child: Center(
                  child: ListTile(
                    leading: SizedBox(
                      height: 50.h,
                      width: 50.w,
                      child: Container(
                      color: Colors.black.withOpacity(0.50),
                    ),
                    ),
                    title: Container(
                      height: 10.h,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.50),
                    ),
                    subtitle: Container(
                      height: 10.h,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.50),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
