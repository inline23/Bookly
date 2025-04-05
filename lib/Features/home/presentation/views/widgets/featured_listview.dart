import 'package:bookly_app/Features/home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: const FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
