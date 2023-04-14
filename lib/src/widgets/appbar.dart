import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/src/appcolors/colors.dart';

class AppBars extends StatelessWidget {
  const AppBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 56.h,
      width: MediaQuery.of(context).size.width.w,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  child: SvgPicture.asset(
                    'assets/svg/sorts.svg',
                  ),
                )),
            Spacer(),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  child: SvgPicture.asset(
                    'assets/svg/favourite.svg',
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Stack(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: SvgPicture.asset(
                        'assets/svg/notifications.svg',
                      ),
                    )),
                Positioned(
                    left: 20.w,
                    top: 4.h,
                    child: Container(
                      height: 15.h,
                      width: 15.w,
                      padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: AppTheme.colors.badge,
                          borderRadius: BorderRadius.circular(8)),
                      constraints: BoxConstraints(
                        minHeight: 12,
                        minWidth: 12,
                      ),
                      child: Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: Colors.white, fontSize: 11.sp),
                          )),
                    ))
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  child: CircleAvatar(
                    foregroundImage:AssetImage('assets/svg/profiles.png'),
                    // child: Image.asset(fit: BoxFit.fill
                    //   ,
                    //   'assets/svg/profiles.png',
                    // ),
                  ),
                )),
          ],
        ),
      ),
    );

  }
}
