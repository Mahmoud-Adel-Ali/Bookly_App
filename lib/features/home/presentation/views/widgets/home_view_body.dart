import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listView.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/fetured_Books_ListView.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        // to put widget
        SliverToBoxAdapter(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: homeViewPadding),
                child: CustomAppBar(),
              ),
              FeturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: homeViewPadding),
                child: Text("Best Seller", style: Styles.textSyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverToBoxAdapter(//  you can SliverFillRemaining =>can use Expanded
          // if we use SliverFillRemaining => don't use shrinkWrap in listView.builder
          // if we use SliverToBoxAdapter =>  use shrinkWrap in listView.builder
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: homeViewPadding),
            child: BestSellerListView(),
          ),
        )
      ],
    );

    // return
  }
}
