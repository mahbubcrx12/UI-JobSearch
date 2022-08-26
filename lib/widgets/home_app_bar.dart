import 'package:flutter/material.dart';

class HomeAppBAr extends StatelessWidget {
  const HomeAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70,left:20),
      child: Container(

        child: Row(

          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("welcome home",style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w400
                ),),
                Text("Annie Bryant",style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          transform: Matrix4.rotationZ(50),
                          child: Icon(Icons.notifications_none,size: 45,)),
                      SizedBox(width: 12,),
                      Image.asset("assets/images/avatar.png",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover
                        ,
                      )

                    ],
                  ),
                ),
                Positioned(
                    top: 5,
                    left: 80,
                    child: Container(

                      height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red
                  ),
                ))
              ],
            )

          ],
        ),
      ),
    );
  }
}
