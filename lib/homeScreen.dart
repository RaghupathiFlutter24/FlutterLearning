import 'package:flutter/material.dart';
import 'Constant.dart';
import 'custom_widgets.dart';
import "custom_colors.dart";
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constant.userTitle
        ),
      ),
      body: ListView(
        children: [
            Container(
              height: 70,
              color: Colors.grey[400],
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  SizedBox(width: 30),
                  Icon(
                      Icons.info_outline,
                    size: 32.0,
                  ),
                  SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "KYC Pending.",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "SF Pro Display",
                          fontWeight: FontWeight.bold,

                        )
                      ),
                      InkWell(onTap: (){
                        print("=====>onTap");
                      },
                      child: Text(
                        Constant.completeKYC,
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      ),
                    ],
                  ),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(right: 13),
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.close,
                      )
                  )),
                ],
              ),
            ),
          Container(
            margin: EdgeInsets.all(20),
              height: 135,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 8,
                  offset: Offset(0,2)
                )
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                SizedBox(width: 20),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 12),
                      Text(
                        Constant.walletBlnc,
                      ),
                      SizedBox(height: 25),
                      Text(
                        "₹30,000",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40
                        ),
                      ),
                    ],
                  ),
               Expanded(child: Container(
                 margin: EdgeInsets.only(right: 12),
                  alignment: Alignment.centerRight,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    SizedBox(height: 22),
                    FlatButton(
                        shape: RoundedRectangleBorder(side: BorderSide(
                            width: 1,
                            style: BorderStyle.solid
                        ), borderRadius: BorderRadius.circular(8)),
                      color: Colors.black,
                        onPressed: (){

                        },
                        child: Text(
                          Constant.addMoney,
                          style: TextStyle(
                            color: Colors.white
                          ),
                        )),
                  ],
                ),
                ),
               ),
              ],
            ),
          ),
          Container(
            height: 110,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    offset: Offset(0,2)
                )
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                   Constant.giftGold,
                    style: TextStyle(
                      fontSize: 32,
                        fontFamily: "Raleway",
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "in 3 clicks",
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 240,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [BoxShadow(
                color: Colors.grey,
                offset: Offset(0,2),
                blurRadius: 8,
              ),
            ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Constant.comingSoon,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 160,
                  child: ListView.builder(
                    padding: EdgeInsets.all(5),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return ContainerViews();
                      }),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          viewAllBanner(inputText: Constant.viewAll,headerText: Constant.offerForYou),
          Container(
            height: 180,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20,bottom: 5),
                    width: 320,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.grey,Colors.white],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: Offset(0,2)
                      )],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                 Constant.minOff,
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  textStyle: Theme.of(context).textTheme.headline4,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w900,
                                )
                              ),
                              Expanded(
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Icon(
                                      Icons.bookmark_add_outlined
                                    ),
                                  )
                              ),
                            ],
                          ),
                          Text(
                              Constant.offContent,
                            ),
                          Expanded(child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 90,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      boxShadow: [BoxShadow(
                                          offset: Offset(0.0,0.75),
                                          color: Colors.grey
                                      )],
                                      gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [Colors.grey,Colors.white]
                                      )
                                  ),
                                  child: Image.asset(Images.tanishqIcon,height: 40,width: 40,fit: BoxFit.fill),
                                ),
                              ],
                            ),
                          ),),
                        ],
                      ),
                    ),
                  );
                },
            ),
          ),
          SizedBox(height: 15),
          viewAllBanner(inputText: Constant.viewAll,headerText: Constant.partners),
          Container(
            margin: EdgeInsets.only(top: 5,left: 20),
           height: 115,
            child: ListView.builder(
              padding: EdgeInsets.all(05),
              itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
              return Container(
                width: 116,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: HexColor(HexColorCode.liteGray),
                  boxShadow: [BoxShadow(
                    offset: Offset(0.0,1),
                    color: Colors.grey,
                    blurRadius: 4
                  )],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(Images.imageIcon,height: 60,width: 60),
                      Text("Jeweller #${index}")
                    ],
                  ),
              );
            }),
          ),
          SizedBox(height: 10),
          viewAllBanner(inputText: Constant.explore, headerText: Constant.trending),
          Container(
            margin: EdgeInsets.only(top: 10,left: 20),
            height: 270,
            child: ListView.builder(
              itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.only(bottom: 2),
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.color),
                        image: AssetImage(Images.necklaceImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                         alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.share),
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                      Constant.trendingBannerContent,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  ),
                                  Text(
                                    "July 12, 2022  |  Ausper",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                  ),
                                ],
                              ),
                            ) ),
                      ],
                    ),
                  );
            }),
          ),
          SizedBox(height: 12),
          viewAllBanner(inputText:  Constant.followUs, headerText: Constant.instaGalley),
          SizedBox(height: 13),
          Container(
            height: 140,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(Images.goldImg),
                        fit: BoxFit.cover
                      ),
                    ),

                    // child: AssetImage(
                    //
                    // )

                  );
            }),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
              label: TabBarTitle.home,
              icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: TabBarTitle.myPlans,
            icon: Icon(Icons.account_circle),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: TabBarTitle.discover,
            icon: Icon(Icons.camera),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: TabBarTitle.trending,
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            label: TabBarTitle.more,
            icon: Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}
