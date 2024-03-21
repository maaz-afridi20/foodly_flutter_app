import 'package:multi_vendor_food_app/utils/exports.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: Container(height: 130)),
      body: SafeArea(child: CustomContainer(containerContent: Container())),
    );
  }
}
