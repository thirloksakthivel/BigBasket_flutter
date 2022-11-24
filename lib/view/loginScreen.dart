import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/gestures.dart';
import 'package:badges/badges.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
              body :VStack(
                  [
                    HStack([
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset("assets/basketlogo.png"),
                      ).pOnly(left:38,top:25),
                      Text('Big Basket',style:GoogleFonts.courgette(fontSize: 40,
                      ),).pOnly(left: 10,top: 30),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.transparent),borderRadius: BorderRadius.circular(5),color: Colors.red),
                        child: Text(' STORE ',style:GoogleFonts.roboto(fontSize: 20,color: Colors.white
                        ),),
                      ).pOnly(top:35),
                        ]),
                Container(
                  width: 350,
                  child: TextField(
          decoration:InputDecoration(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            hintText: "Search for products",
            suffixIcon: Icon(Icons.search),
            )
          ),
                ).pOnly(left: 36,top: 35),
                    SizedBox(
                      height: 25,
                    ),
                    HStack([
                      Badge(
                          badgeColor: Colors.red,
                          badgeContent: Text("3"),
                          child: Icon(Iconsax.shuffle)).pOnly(left:150),
                      Badge(
                          badgeColor: Colors.amber,
                          badgeContent: Text("0"),
                          child: Icon(Iconsax.heart)).pOnly(left:20),
                      Badge(
                          badgeColor: Colors.lightGreenAccent,
                          badgeContent: Text("2"),
                          child: Icon(Iconsax.notification )).pOnly(left:20),
                      50.heightBox,
    ]),

                    Divider(
                    thickness: 2,
                  ),
                    HStack([
                    IconButton(
                      onPressed: (){},
                      icon: new Image.asset("assets/tplane.jpg"),
                    ).pOnly(left: 10),
                    Text('Menu',style: TextStyle(fontSize: 20,color: Colors.red)).pOnly(left: 230),
                      Icon(Icons.menu).pOnly(left:20),
                    ]),
                    Divider(
                      thickness: 2,
                    ),
                    ZStack([
                      CarouselSlider(
                        options: CarouselOptions(height: 550,autoPlay: true,
                          autoPlayInterval: Duration(seconds: 2),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,),
                        items: [1,2,3].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 1.0),
                                decoration: BoxDecoration(
                                    color: Colors.white
                                ),
                                child: Image.asset("assets/iphone1.jpeg"),
                              );
                            },
                          );
                        }).toList(),
                      ),

                      Container(decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black),color: Colors.black),
    child: Text('ONLY THIS WEEK ! ',style:GoogleFonts.oswald(fontSize: 20,color: Colors.white),)).pOnly(top: 50,left: 10),
                      Container(decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.blueAccent),color: Colors.blueAccent),
                          child: Text('20 % OFF! ',style:GoogleFonts.oswald(fontSize: 40,color: Colors.white),)).pOnly(top:80,left: 10),
                      Container(
                          child: Text('iPhone 13 ',style:GoogleFonts.poppins(fontSize: 40,color: Colors.black),)).pOnly(top:160,left: 10),
                      Container(
                          child: Text('iPhone 13 comes in six beautiful colors:\n RED, starlight, midnight, blue,\n pink, and the all-new green. ',style:GoogleFonts.ubuntu(fontSize: 12,color: Colors.grey),)).pOnly(top:250,left: 10),
                      Container(decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black),borderRadius: BorderRadius.circular(20),color: Colors.black),
                          child: Text('  BUY NOW ! ',style:GoogleFonts.rubik(fontSize: 30,color: Colors.white),)).pOnly(top: 330,left: 10),
                    ]),
                    ZStack([
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Color(000000),
                          image: DecorationImage(
                            image: NetworkImage('https://media.istockphoto.com/id/1411375497/vector/truck-delivery-service-black-silhouette-icon-cargo-van-fast-shipping-glyph-pictogram-courier.jpg?b=1&s=170667a&w=0&k=20&c=EK13WGcfFzPW0k4JCv17vPO_SnSmxVkKKf6xNXE3sjo='),
                            fit: BoxFit.contain,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ).pOnly(left: 160,top: 40),
                    Container(
                      height: 300,
                      width: 335,
    decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey))
                    ).pOnly(left: 40,top: 100,bottom: 15),
                      Text('Free Shipping & Return',style:GoogleFonts.poppins(fontSize: 20)).pOnly(top: 160,left: 100),
                      Text('Proin gravida nibh vel velit auctor \n          aliquet aenean sollicitu \n                version of Lorem.',style:GoogleFonts.poppins(fontSize: 15,color: Colors.black),).pOnly(top: 220,left: 80),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Read more ->',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Read more clicked');
                                }),
                        ]),
                      ).pOnly(top: 320).centered(),
                    ]),
                    ZStack([
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Color(000000),
                          image: DecorationImage(
                            image: NetworkImage('https://t0.gstatic.com/images?q=tbn:ANd9GcQgTU0M4-86ZAzGrZ6vvFUWJkcFmTeJCROznSRflSK3QHsJec_B'),
                            fit: BoxFit.contain,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ).pOnly(left: 160,top: 40),
                      Text('100% Secure Payments',style:GoogleFonts.poppins(fontSize: 20)).pOnly(top: 160,left: 100),
                      Text('Proin gravida nibh vel velit auctor \n          aliquet aenean sollicitu \n                version of Lorem.',style:GoogleFonts.poppins(fontSize: 15,color: Colors.black),).pOnly(top: 220,left: 80),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Read more ->',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Read more clicked');
                                }),
                        ]),
                      ).pOnly(top: 320).centered(),
                      Container(
                          height: 300,
                          width: 335,
                          decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey))
                      ).pOnly(left: 40,top: 100,bottom: 15),
                    ]),
                    ZStack([
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:  Color(000000),
                          image: DecorationImage(
                            image: NetworkImage('https://thumbs.dreamstime.com/b/headphones-icon-vector-illustration-headphones-symbol-headphones-icon-vector-illustration-headphones-symbol-139226761.jpg'),fit: BoxFit.contain,
                          ),
                          borderRadius: BorderRadius.all( Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ).pOnly(left: 160,top: 40),
                      Text('100% Secure Payments',style:GoogleFonts.poppins(fontSize: 20)).pOnly(top: 160,left: 100),
                      Text('Proin gravida nibh vel velit auctor \n          aliquet aenean sollicitu \n                version of Lorem.',style:GoogleFonts.poppins(fontSize: 15,color: Colors.black),).pOnly(top: 220,left: 80),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Read more ->',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Read more clicked');
                                }),
                        ]),
                      ).pOnly(top: 320).centered(),
                      Container(
                          height: 300,
                          width: 335,
                          decoration: BoxDecoration(border: Border.all(width: 2,color: Colors.grey))
                      ).pOnly(left: 40,top: 100),
                    ]),
20.heightBox,
                    ZStack([
                      Text('DVR Cam 250',style: GoogleFonts.poppins(fontSize: 30),).pOnly(top: 150,left: 90),
                      Divider(
                        thickness: 3,
                        indent: 90,
                        endIndent: 250,
                        color: Colors.blue,
                      ).pOnly(top: 200),
                      Text('  Aenean sollicitudin, lorem quis \n  biben dum auctor, nisi elit consequat',style: GoogleFonts.raleway(fontSize: 15),).pOnly(left: 65,top: 250),
                      Text("\$399",style: GoogleFonts.poppins(fontSize: 40,color: Colors.red),).pOnly(left: 85,top: 310),
                      Container(
                        decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.transparent),borderRadius: BorderRadius.circular(50),color: Colors.blue),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(12.0),
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                          child: const Text('SHOP NOW !'),),
                      ).pOnly(left:210,top:315),
                      Container(
                          color: Colors.grey.withOpacity(0.115),
                          height: 310,
                          width: 335,
                      ).pOnly(left: 40,top: 100,bottom: 15),
                      Container(
                        color: Colors.grey.withOpacity(0.115),
                        height: 280,
                        width: 310,
                      ).pOnly(left: 52,top: 115,bottom: 15),
                    ]),
                    ZStack([
                      Text('Mobile Charger',style: GoogleFonts.poppins(fontSize: 30),).pOnly(top: 150,left: 90),
                      Divider(
                        thickness: 3,
                        indent: 90,
                        endIndent: 250,
                        color: Colors.blue,
                      ).pOnly(top: 200),
                      Text('  Aenean sollicitudin, lorem quis \n  biben dum auctor, nisi elit consequat',style: GoogleFonts.raleway(fontSize: 15),).pOnly(left: 65,top: 250),
                      Text("\$250",style: GoogleFonts.poppins(fontSize: 40,color: Colors.red),).pOnly(left: 85,top: 310),
                      Container(
                        decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.transparent),borderRadius: BorderRadius.circular(50),color: Colors.blue),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(12.0),
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                          child: const Text('SHOP NOW !'),),
                      ).pOnly(left:210,top:315),
                      Container(
                        color: Colors.grey.withOpacity(0.115),
                        height: 310,
                        width: 335,
                      ).pOnly(left: 40,top: 100,bottom: 15),
                      Container(
                        color: Colors.grey.withOpacity(0.115),
                        height: 280,
                        width: 310,
                      ).pOnly(left: 52,top: 115,bottom: 15),
                    ]),
                    Text('FEATURED PRODUCTS',style: GoogleFonts.poppins(fontSize: 30),).pOnly(left:20,top:100),
                    Divider(
                      thickness: 3,
                      indent: 30,
                      endIndent: 320,
                      color: Colors.blue,
                    ),
                    HStack([
                     Container(
                       height:80,
                       width:80,
                         decoration: BoxDecoration(border: Border.all(width: 0.5,color: Colors.grey)),
                       child: Text('<',style: GoogleFonts.raleway(fontSize: 60),).centered(),
                     ),
                      Container(
                          height:80,
                          width:80,
                          decoration: BoxDecoration(border: Border.all(width: 0.5,color: Colors.grey)),
    child: Text('>',style: GoogleFonts.raleway(fontSize: 60),).centered(),
                      ),
                    ]).pOnly(top:20,left:30,bottom: 30),
                    Container(
                      height:182,
                      width: 200,
                      decoration: BoxDecoration(border: Border.all(width:0.5,color: Colors.grey)),
                      child:VStack([
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.all(12.0),
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                          child: const Text('Best sellers'),).pOnly(top: 20),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.all(12.0),
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                          child: const Text('Top hot deals'),),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.all(12.0),
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: () {},
                          child: const Text('Trending items'),),
                      ]),
                    ).pOnly(left:30,bottom:30),
              ]).scrollVertical().whFull(context),
      ),
    );
  }
}
