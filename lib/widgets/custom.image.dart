import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/styles/app.styles.dart';
import 'package:ecommerce_app/styles/size.config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;

  const CustomImage({this.height, this.image, this.width});

  @override
  Widget build(BuildContext context) {
    double size = SizeConfig.screenSize;
    return CachedNetworkImage(
      imageUrl: image,
      imageBuilder: (context, imageProvider) {
        return Container(
          height: size * height,
          width: size * width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              )),
        );
      },
      placeholder: (context, url) => Container(
        height: size * height,
        width: size * width,
        child: Center(
          child: SpinKitFadingCircle(
            color: black,
            size: size * 3,
          ),
        ),
      ),
      errorWidget: (context, url, error) => Icon(
        FlutterIcons.error_mdi,
      ),
    );
  }
}
