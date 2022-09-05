import 'package:flutter/material.dart';
import 'custom_colors.dart';
import 'Constant.dart';

class ContainerViews extends StatefulWidget {
  const ContainerViews({Key? key}) : super(key: key);

  @override
  State<ContainerViews> createState() => _ContainerViewsState();
}

class _ContainerViewsState extends State<ContainerViews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 200,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: HexColor(HexColorCode.liteGray),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 4,
            offset: Offset(0,2)
        )],
      ),
      child: Center(
        child: Column(
          children: [
            Text(
                Constant.saveNowGold,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),
            ),
              SizedBox(height: 5),
              Image.asset(Images.imageIcon,height: 60,width: 100),
            SizedBox(height: 10),
            Text(
              "Ausper Me\nYou can save now & buy gold later",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class viewAllBanner extends StatelessWidget {
  final String headerText;
  final String inputText;
  const viewAllBanner({Key? key,required this .inputText,required this .headerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 20),
          Text(
            headerText,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
          Expanded(child:  Text(
            inputText,
            textAlign: TextAlign.end,
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: 16,
            ),
          )),

          SizedBox(width: 20),
        ],
      ),
    );
  }
}

