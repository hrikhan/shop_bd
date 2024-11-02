import 'package:flutter/material.dart';

import 'package:shop_bd/common/widgets/container/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [header_container(child: Container())],
        ),
      ),
    );
  }
}
