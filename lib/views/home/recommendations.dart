import 'package:multi_vendor_food_app/utils/exports.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kOffWhite,
          title: ReusableText(
              text: "Recommendations",
              style: appStyle(13.sp, kGray, FontWeight.w600)),
          elevation: .3),
    );
  }
}
