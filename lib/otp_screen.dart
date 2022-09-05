import 'package:flutter/material.dart';
import 'Constant.dart';
import 'homeScreen.dart';

class Otp_Screen extends StatefulWidget {
  final String phoneNumber;
  const Otp_Screen({Key? key,required this .phoneNumber}) : super(key: key);

  @override
  State<Otp_Screen> createState() => _Otp_ScreenState();
}

class _Otp_ScreenState extends State<Otp_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 0),
              child: IconButton(
                padding: EdgeInsets.all(0),
                  alignment: Alignment.centerLeft,
                  onPressed: (){
                      Navigator.pop(context);
                  },
                  icon: Image.asset(Images.leftArrow,height: 20,width: 20),
            )
            ),
            SizedBox(height: 35),
            Text(
              Constant.otpVerification,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
            ),
            SizedBox(height: 45),
            Text(
              Constant.otpMessage + "${widget.phoneNumber}",
              style: TextStyle(
                color: Colors.grey
              ),
            ),
            SizedBox(height: 10),
            FlatButton(
              padding: EdgeInsets.only(left: 0),
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                    Constant.mobileNumberChange,
                  style: TextStyle(
                    decoration: TextDecoration.underline
                  ),
                )
            ),
            SizedBox(height: 60),
            Container(
              height: 53,
              width: double.infinity,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                maxLength: 6,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: Constant.otpHere,
                    hintStyle: TextStyle(fontSize: 14),
                    counterText: "",
                    border: InputBorder.none
                  ),
                ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  Constant.notReceived
                ),
                FlatButton(
                    onPressed: (){

                    },
                    child: Text(
                    "Resend ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    )
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 53,
              width: double.infinity,
              // color: Colors.yellow,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(8)
              ),
              // ignore: deprecated_member_use
              child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Text(Constant.verify,style: TextStyle(fontSize: 18))),
            ),
          ],
        ),
      ),
    );
  }
}
