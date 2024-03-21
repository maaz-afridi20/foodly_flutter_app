import 'package:multi_vendor_food_app/utils/exports.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: ReusableText(
              text: 'Categories',
              style: appStyle(12.0, kGray, FontWeight.w600)),
          elevation: 0,
          backgroundColor: kOffWhite,
          centerTitle: true),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(top: 10.h, left: 12.w),
          height: height,
          child: ListView(
            children: List.generate(categories.length, (index) {
              var category = categories[index];
              return CategoryTile(category: category);
            }),
          ),
        ),
      ),
    );
  }
}
