import 'package:flutter/material.dart';
import 'package:movies_app_c11/model/UpcomingResponse.dart';
import 'package:movies_app_c11/theme/app_colors.dart';

import 'new_releases_move_item_widget.dart';

class NewReleasesMoveItem extends StatelessWidget {
  final List<Movies> newReleasesMovies;

  const NewReleasesMoveItem({
    super.key,
    required this.newReleasesMovies,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: AppColors.moviesListContainerColor,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'New Releases',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: AppColors.whiteColor),
            ),
          ),
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        print('Go To Details Screen');
                      },
                      child: NewReleasesMoveItemWidget(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        movie: newReleasesMovies[index],
                      ),
                    ),
                itemCount: newReleasesMovies.length),
          ),
        ],
      ),
    );
  }
}
