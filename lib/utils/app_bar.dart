import 'package:flutter/material.dart';
import 'package:login_flutter/theme/colors.dart';

class AppBarScreen extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarScreen({Key? key})
      : preferredSize = const Size.fromHeight(100),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors.whitePalette,
      foregroundColor: Theme.of(context).primaryColor,
      title: Text(
        'AppBarScreen',
        style: Theme.of(context).textTheme.headlineLarge!.merge(TextStyle(
              color: Theme.of(context).primaryColor,
            )),
      ),
      centerTitle: true,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }
}
