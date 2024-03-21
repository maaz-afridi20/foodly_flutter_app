import 'package:multi_vendor_food_app/utils/exports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: const SizedBox(
            height: 130,
            child: CustomAppbar(),
          )),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(
                  text: 'Nearby Resturants',
                  onTap: () {
                    Get.to(() => const AllNearbyRestaurants(),
                        transition: Transition.cupertino,
                        duration: const Duration(milliseconds: 900));
                  }),
              const NearbyRestaurants(),
              Heading(
                  text: 'Try Something New',
                  onTap: () {
                    Get.to(() => const Recommendations(),
                        transition: Transition.cupertino,
                        duration: const Duration(milliseconds: 900));
                  }),
              const FoodList(),
              Heading(
                  text: 'Fastfood Closer To You',
                  onTap: () {
                    Get.to(() => const AllFastFoods(),
                        transition: Transition.cupertino,
                        duration: const Duration(milliseconds: 900));
                  }),
              const FoodList(),
            ],
          ),
        ),
      ),
    );
  }
}
