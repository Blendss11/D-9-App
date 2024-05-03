import 'package:d9/common/widgets/costum/circular_container.dart';
import 'package:d9/common/widgets/curvededge/curved_edge_widget.dart';
import 'package:d9/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class TprimaryHeader extends StatelessWidget {
  const TprimaryHeader({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TcurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: Tcolors.primaryColor,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TcircularContainer(
                    backgroundColor: Tcolors.white.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TcircularContainer(
                    backgroundColor: Tcolors.white.withOpacity(0.1)),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
