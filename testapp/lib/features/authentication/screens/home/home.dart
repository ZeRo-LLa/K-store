import 'package:flutter/material.dart';
import 'package:testapp/common/custom_shapes/containers/primary_header_container.dart';
import 'package:testapp/features/authentication/screens/home/widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: THomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [TPrimaryHeaderContainer(child: Column(children: []))],
        ),
      ),
    );
  }
}
