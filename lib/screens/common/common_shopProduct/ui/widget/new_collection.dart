import 'package:epic_multivendor/apis/api_endpoints.dart';
import 'package:epic_multivendor/helper/helper_images.dart';
import 'package:epic_multivendor/screens/common/common_details/common_details.dart';
import 'package:epic_multivendor/screens/shops/shop_products/shop_product_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../../../../helper/model/user_model.dart';
import '../../../../../helper/widgets/common_screen_product_list.dart';
import '../../../../../helper/widgets/common_view_all.dart';

class CommonNewCollection extends StatelessWidget {
  const CommonNewCollection({super.key});

  @override
  Widget build(BuildContext context) {
    ShopProductProvider shopProductProvider = context.watch<ShopProductProvider>();
    var userModel = Get.find<UserModel>();
    return Column(
      children: [
        CommonViewAllWithTitle(
          title: "Products",
          // title: "New ${userModel.shopCategoryType}",
          viewAll: "View All",
        ),
        const SizedBox(
          height: 5,
        ),

        shopProductProvider.shopProductListModel?.products?.length == 0 ||
            shopProductProvider.shopProductListModel?.products?.length == null ?
            Center(
              child: Image.asset(AppAssetsImages.noProduct1),
            ):
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 260.0,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: shopProductProvider.shopProductListModel?.products?.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, i) {
            return CommonScreenProductList(
              image: "${ApiEndPoints.imageBaseURL}${shopProductProvider.shopProductListModel?.products?[i].featuredImageName}",
              title:shopProductProvider.shopProductListModel?.products?[i].name ?? "",
              type: "kakkanad",
              price: shopProductProvider.shopProductListModel?.products?[i].price.toString() ?? "",
              strikedPrice: shopProductProvider.shopProductListModel?.products?[i].salePrice.toString() ?? "",
              onTap: (){
                userModel.updateWith(shopProductId: shopProductProvider.shopProductListModel?.products?[i].id.toString());
                userModel.updateWith(shopProductTitle: shopProductProvider.shopProductListModel?.products?[i].name.toString());
                userModel.updateWith(shopProductPrice: shopProductProvider.shopProductListModel?.products?[i].price.toString());
                userModel.updateWith(shopProductImage: "${ApiEndPoints.imageBaseURL}${shopProductProvider.shopProductListModel?.products?[i].featuredImageName}");
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CommonProductDetails(),));
              },
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
