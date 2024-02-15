
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class FeturedBooksListView extends StatelessWidget {
  const FeturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8),
            child:  CustomBookImage(),
          );
        },
      ),
    );
  }
}
