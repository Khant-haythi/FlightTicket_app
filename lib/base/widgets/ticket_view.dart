
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widget.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(size.width);

    return SizedBox(

      width: size.width*0.85,
      height: 170,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(16),
        child : Column(
          children: [
            Row(

              children: [
                Text(
                  "NYC",style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                BigDot(),
                Expanded(child: Stack(children: [
                  SizedBox(
                    height: 24,
                    child: AppLayoutBuilderWidget(randomDivider: 6,)
                  ),
                  //Center(child: Text("plane"),)
                ],)),
                BigDot(),
                Expanded(child: Container()),
                Text(
                  "NYC",style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
              ],
            )
          ],
        ),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
        ),
      ),
    );
  }
}
