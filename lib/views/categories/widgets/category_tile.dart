import 'package:multi_vendor_food_app/utils/exports.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
  });

  final category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => const CategoryPage(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 900));
      },
      title: ReusableText(
          text: category['title'],
          style: appStyle(12.0, kGray, FontWeight.normal)),
      trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15.r, color: kGray),
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(category["imageUrl"], fit: BoxFit.contain),
      ),
    );
  }
}
