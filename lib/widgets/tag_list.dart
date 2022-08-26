import 'package:flutter/material.dart';

class TagList extends StatefulWidget {


  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final _tagList=[
    "All",
    "⚡ Popular",
    "⭐ Featured",
    "All",
    "⚡ Popular",
    "⭐ Featured",
    "All",
    "⚡ Popular",
    "⭐ Featured",
  ];
  var selected=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          height: 60,

        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,

           itemCount: _tagList.length,
          itemBuilder: (_,index){

             return GestureDetector(
               onTap: () {
                 setState(() {
                   selected = index;
                 });
               },

               child: Container(
                 height: 10,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color:selected==index?
                     Colors.white:Colors.blue.withOpacity(.3)
                   ),
                   color: selected==index?
                   Colors.blue.withOpacity(.2):Colors.white,
                   borderRadius: BorderRadius.circular(14),

                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Center(
                     child: Text(_tagList[index],
                     style: TextStyle(
                       fontSize: 25
                     ),),
                   ),
                 ),

               ),
             );
          },
          separatorBuilder: (_,index)=>SizedBox(width: 10,),

        ),
      ),
    );
  }
}
