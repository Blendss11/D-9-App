import 'package:d9/common/widgets/custom_shapes/containers/curved_edge.dart';
import 'package:flutter/cupertino.dart';

class TcurvedEdgeWidget extends StatelessWidget {
  const TcurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TcustomCurvedEdge(), child: child);
  }
}