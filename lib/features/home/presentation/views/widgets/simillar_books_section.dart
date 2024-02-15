import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/simillar_books_listView.dart';
import 'package:flutter/material.dart';

class SimillarBooksSection extends StatelessWidget {
  const SimillarBooksSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can alse like ",
          style: Styles.textSyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        const SimillarBooksListView(),
      ],
    );
  }
}
