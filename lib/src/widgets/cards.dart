import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mypcot/src/appcolors/colors.dart';
import 'package:mypcot/src/widgets/stacked_widget.dart';

class Cards extends StatelessWidget {
  final String title;
  final String title1;
  final String title2;
  final SvgPicture logo;
  final backgroundcolor;
  final backgroundcolor1;

  const Cards({
    Key? key,
    required this.title,
    required this.logo,
    this.backgroundcolor,
    this.backgroundcolor1,
    required this.title1, required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(children: [
        Container(
            height: 225.h,
            width: 320.w,
            color: Colors.transparent,
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(top: 15),
                  height: 220.h,
                  width: 320.w,
                  decoration: BoxDecoration(
                      color: backgroundcolor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 60.r,
                                child: logo,
                              )
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          height: 30.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: backgroundcolor1),
                          child: Center(
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
        Positioned(
            top: 0,
            left: 200,
            child: Container(
              height: 69.h,
              width: 125.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppTheme.colors.orange),
              child: Center(
                  child: Text(
                title1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              )),
            )),
        Positioned(top: 60, left: 220, child: buildStackedImages()),
        Positioned(
          top: 120,
            left: 220,
            child: Container(
              height: 69.h,
          width:105.w ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white

          ),
              child:Center(
                child: Text(title2,textAlign:TextAlign.center,style: TextStyle(color: AppTheme.colors.text,fontSize: 12.sp  ,fontWeight: FontWeight.bold )),),
              )
        ),
        Positioned(
          top: 120,
            left: 220,
            child: Container(
              height: 69.h,
          width:105.w ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white

          ),
              child:Center(
                child: Text(title2,textAlign:TextAlign.center,style: TextStyle(color: AppTheme.colors.text,fontSize: 12.sp  ,fontWeight: FontWeight.bold )),),
              )
        ),
        Positioned(
            top:180,left:245,child: buildStackedImagesone())
      ]),
    );
  }

  Widget buildStackedImages() {
    final double size = 40;
    final urlImages = [
      'https://i.scdn.co/image/ab6761610000e5eb8e8f4609471349b4bfdbf774',
      'https://cdn.gadgets360.com/content/assets/entertainment/shah-rukh-khan-poster.jpg',
      'https://images.cnbctv18.com/wp-content/uploads/2020/10/Alia_Bhatt_Raazi-768x655.jpg'
    ];
    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidget(items: items, size: size);
  }
  Widget buildStackedImagesone() {
    final double size = 40;
    final urlImages = [
      'https://i.pinimg.com/236x/6f/6e/51/6f6e514c42478403f67c219eff1608a4.jpg',
      'https://i7.behindwoods.com/hindi-actor/hrithik-roshan/thumbnails/related-section-image-hrithik-roshan-11.jpg',

    ];
    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidget(items: items, size: size);
  }

  Widget buildImage(String urlImage) {
    final double borderSize = 2;
    return ClipOval(
      child: Container(
        color: AppTheme.colors.orange,
        padding: EdgeInsets.all(borderSize),
        child: ClipOval(
          child: Image.network(
            urlImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
