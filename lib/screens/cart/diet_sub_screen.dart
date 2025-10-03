import 'package:diet_esports/components/Images.dart';
import 'package:diet_esports/components/fonts.dart';
import 'package:flutter/material.dart';

class DietSubScreen extends StatefulWidget {
  const DietSubScreen({super.key});

  @override
  State<DietSubScreen> createState() => _DietSubScreenState();
}

class _DietSubScreenState extends State<DietSubScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      appBar: AppBar(
        backgroundColor: const Color(0xFF171717),
        elevation: 0,
        automaticallyImplyLeading: false, // Prevents default back button
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Back Button
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
            ),

            //Replay icon
            Container(
              height: 50,
              width: 150,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: Color(0xFFF4B701),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Image.asset(Images.speak_ic),
                    color: Colors.black,
                    iconSize: 22,
                  ),
                  Text(
                    "Replay",
                    style: TextStyle(fontSize: 22, fontFamily: Fonts.poppins),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Fast Food",
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: Fonts.poppins,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(thickness: 0.8, color: Color(0xFF484848)),
              SizedBox(height: 10),

              // Row(
              //   children: [
              //     Image.asset(Images.burger,height: 142,width: 142,),
              //     SizedBox(width: 10,),
              //     Column(
              //       children: [
              //         Row(
              //           children: [
              //             Text(
              //               "Hamburger",
              //               style: TextStyle( fontSize: 24, fontFamily: Fonts.poppins,color: Colors.white),
              //             ),
              //             SizedBox(width: 10,),
              //             //kcal
              //             Container(
              //               height: 40,
              //               width: 70,
              //               margin: const EdgeInsets.only(right: 8),
              //               decoration: BoxDecoration(
              //                 color: Color(0xFFF4B701),
              //                 borderRadius: BorderRadius.circular(20),
              //                 boxShadow: [
              //                   BoxShadow(
              //                     color: Colors.black12,
              //                     blurRadius: 4,
              //                     offset: Offset(0, 2),
              //                   ),
              //                 ],
              //               ),
              //               child: Center(
              //                 child: Text(
              //                       "Kcal",
              //                       style: TextStyle( fontSize: 16, fontFamily: Fonts.poppins),
              //                 ),
              //               ),
              //             ),
              //           ],
              //         ),
              //         SizedBox(height: 10),
              //
              //         //text insersci nella
              //         Container(
              //           height: 33,
              //           width: 208,
              //           margin: const EdgeInsets.only(right: 8),
              //           decoration: BoxDecoration(
              //             color: Color(0xFF383838),
              //             borderRadius: BorderRadius.circular(20),
              //             boxShadow: [
              //               BoxShadow(
              //                 color: Colors.black12,
              //                 blurRadius: 4,
              //                 offset: Offset(0, 2),
              //               ),
              //             ],
              //           ),
              //           child: Center(
              //             child: Text(
              //               "Inserisci nella dieta",
              //               style: TextStyle( fontSize: 16, fontFamily: Fonts.poppins,fontWeight: FontWeight.w500,color: Colors.white),
              //             ),
              //           ),
              //         ),
              //
              //         SizedBox(height: 10,),
              //         //cart adding + -
              //         Container(
              //           padding: EdgeInsets.only(left: 8,right: 8),
              //           height: 35,
              //           width: 187,
              //           margin: const EdgeInsets.only(right: 8),
              //           decoration: BoxDecoration(
              //             color: Colors.transparent, // background color
              //             // borderRadius: BorderRadius.circular(12), // rounded corners
              //             border: Border.all(color: Color(0xFF4E4E4E), width: 1), // border
              //           ),
              //           child: Center(
              //             child: Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Text(
              //                   "-",
              //                   style: TextStyle( fontSize: 24,color: Colors.white),
              //                 ),
              //                 Text(
              //                   "1",
              //                   style: TextStyle( fontSize: 24,color: Colors.white),
              //                 ),
              //                 Text(
              //                   "+",
              //                   style: TextStyle( fontSize: 24,color: Colors.white),
              //                 ),
              //               ],
              //             )
              //           ),
              //         ),
              //       ],
              //     )
              //   ],
              // ),
              SingleCartItem(name: "Hamburger", images: Images.burger),
              Divider(thickness: 0.8, color: Color(0xFF484848)),
              SingleCartItem(name: "Hamburger", images: Images.frenchFries),
              Divider(thickness: 0.8, color: Color(0xFF484848)),
              SingleCartItem(name: "Hamburger", images: Images.hotDog),
              Divider(thickness: 0.8, color: Color(0xFF484848)),
              SingleCartItem(name: "Hamburger", images: Images.chicken),
              Divider(thickness: 0.8, color: Color(0xFF484848)),
              SingleCartItem(name: "Hamburger", images: Images.coc),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleCartItem extends StatelessWidget {
  final String name;
  final String images;

  const SingleCartItem({super.key, required this.name, required this.images});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(images, height: 142, width: 142),
        SizedBox(width: 10),
        Column(
          children: [
            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: Fonts.poppins,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 10),
                //kcal
                Container(
                  height: 40,
                  width: 70,
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF4B701),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Kcal",
                      style: TextStyle(fontSize: 16, fontFamily: Fonts.poppins),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            //text insersci nella
            Container(
              height: 33,
              width: 208,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: Color(0xFF383838),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "Inserisci nella dieta",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: Fonts.poppins,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            //cart adding + -
            Container(
              padding: EdgeInsets.only(left: 8, right: 8),
              height: 35,
              width: 187,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: Colors.transparent, // background color
                // borderRadius: BorderRadius.circular(12), // rounded corners
                border: Border.all(
                  color: Color(0xFF4E4E4E),
                  width: 1,
                ), // border
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "-",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      "1",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      "+",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ],
    );
  }
}
