import 'package:flutter/material.dart';

import '../../theme/app_palette.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppPalette.gradient2,
      ),
    );
  }
}
