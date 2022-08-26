import 'package:flutter/material.dart';

class BottomListViewPart extends StatefulWidget {
  const BottomListViewPart({Key? key}) : super(key: key);

  @override
  State<BottomListViewPart> createState() => _BottomListViewPartState();
}

class _BottomListViewPartState extends State<BottomListViewPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context,index){
            return Container(


            );
          }

      ),

    );
  }
}
