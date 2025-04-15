import 'package:bookly_app/Features/home/presentation/manager/newets_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListViewItemBlocBuilder extends StatelessWidget {
  const NewestBooksListViewItemBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return BestSellerListView(
            books: state.books,
          );
        } else if (state is NewestBooksFailure) {
          return Text(state.errMessage.toString());
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}


