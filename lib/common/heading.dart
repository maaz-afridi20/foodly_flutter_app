import 'package:multi_vendor_food_app/utils/exports.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: ReusableText(
                  text: text, style: appStyle(16.0, kDark, FontWeight.bold))),
          GestureDetector(
              onTap: onTap,
              child: Icon(AntDesign.appstore1, color: kSecondary, size: 20.sp))
        ],
      ),
    );
  }
}
