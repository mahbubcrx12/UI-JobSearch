import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height*.40,
        width: MediaQuery.of(context).size.width*.90,
        padding: MediaQuery.of(context).padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage("assets/images/search_bg.png",

          ),
            fit: BoxFit.fill
          ),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10,),
                height: 30,
                child: Text("Fast Search",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
                )),
            SizedBox(height: 12,),
            Container(
                padding: EdgeInsets.only(left: 10,),
                height: 50,
                child: Text("you can search quickly for\nthe job you want",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white70
                  ),
                )),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.search,size: 30,color: Colors.black26,),
                      SizedBox(width: 15,),
                      Text("Search",style: TextStyle(
                        fontSize: 25,
                        color: Colors.black26
                      ),)
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
