import 'package:flutter/material.dart';
import 'package:testapp/common/custom_shapes/containers/circular_container.dart';
import 'package:testapp/common/custom_shapes/containers/primary_header_container.dart';
import 'package:testapp/common/custom_shapes/curved_edges/curved_edges.dart';
import 'package:testapp/common/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:testapp/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [TPrimaryHeaderContainer(child: Container())]),
      ),
    );
  }
}
