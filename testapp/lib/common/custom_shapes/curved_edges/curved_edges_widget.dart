import 'package:flutter/material.dart';
import 'package:testapp/common/custom_shapes/curved_edges/curved_edges.dart';

class TCursedEdgeWidget extends StatelessWidget {
  const TCursedEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
