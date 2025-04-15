import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.book,
  });

  final MainAxisAlignment mainAxisAlignment;
  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3),
        Text(
          book.rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        // Text(
        //   book.rating,
        //   style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        // ),
      ],
    );
  }
}
