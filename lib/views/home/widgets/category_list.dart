import 'package:multi_vendor_food_app/utils/exports.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(top: 10.h, left: 12.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: List.generate(categories.length, (index) {
          var category = categories[index];
          return CategoryWidget(category: category);
        }),
      ),
    );
  }
}
