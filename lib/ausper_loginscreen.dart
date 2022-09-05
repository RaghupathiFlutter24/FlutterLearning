import 'package:flutter/material.dart';
import 'otp_screen.dart';
import 'Constant.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AusperLoginScreen extends StatefulWidget {
  const AusperLoginScreen({Key? key}) : super(key: key);

  @override
  State<AusperLoginScreen> createState() => _AusperLoginScreenState();
}

class _AusperLoginScreenState extends State<AusperLoginScreen> {
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40),
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              height: 190,
              width: 190,
              decoration: BoxDecoration(
                  color: Colors.yellow[200],
                  shape: BoxShape.circle
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipOval(child: Image.asset(Images.userIcon,fit: BoxFit.cover,)),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.blueGrey)),
            const SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(30),
              height: 53,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Colors.grey
                  ),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.phone,
                    color: Colors.grey,
                  ),
                  Expanded(
                    child: TextField(
                      controller: _phone,
                      maxLength: 10,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 15),
                        hintText: Constant.phoneNumber,
                        border: InputBorder.none,
                        counterText: "",
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),)
                ],
              ),
      ),
            ),
            Expanded(child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Container(
                  height: 53,
                  width: double.infinity,
                  // color: Colors.yellow,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                      onPressed: (){
                        if (_phone.text.length < 10){
                        Fluttertoast.showToast(msg: ToastMsg.validNumber,
                        gravity: ToastGravity.CENTER);
                        }else{
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Otp_Screen(phoneNumber: _phone.text))
                          );
                        }
                      },
                      child: Text(Constant.verify,style: TextStyle(fontSize: 18))),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
