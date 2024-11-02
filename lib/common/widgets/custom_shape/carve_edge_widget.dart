import 'package:flutter/material.dart';
import 'package:shop_bd/common/widgets/custom_shape/carve_edge.dart';

class custom_edge_widgets extends StatelessWidget {
  const custom_edge_widgets({
    super.key, required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
              clipper: CarveEdge(),
      child: child,
    );
  }
}
