import 'package:clima_ufg/pages/home/controller.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import '../../core/colors.dart';

class ContainerBrasilia extends GetWidget<HomeController> {
  const ContainerBrasilia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HomeController());
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        color: defaultBlue.withOpacity(0.5),
        image: DecorationImage(
          fit: BoxFit.cover,
            image: Image.network('https://blog.urbs.com.br/wp-content/uploads/2019/08/original-d280d922072cd3a52ceaaf5cb68398a1-1024x680.jpg').image,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Opacity(
            opacity: 0.9,
            child: Container(
              child: Center(
                child: Obx (()=>Text(
                  '${controller.temp}', style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: defaultWhite,
                    shadows: [
                      Shadow(color: defaultBlack,
                        blurRadius: 10.0,
                        offset: Offset(2.0, 2.0),)
                    ]
                )
                ),
                ),
              ),
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(50.0),
                  topLeft: Radius.circular(50.0),
                ),
                gradient: LinearGradient(
                  colors: [
                    controller.temp<30 ? defaultBlue : defaultRed,
                    controller.temp<30 ? defaultGreen : defaultYellow,
                  ]
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}