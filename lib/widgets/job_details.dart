import 'package:day24/home_page.dart';
import 'package:day24/model/job.dart';

import 'package:flutter/material.dart';
class JobDetails extends StatelessWidget {
  Job _job;
  JobDetails(this._job);


  @override
  Widget build(BuildContext context) {
    return Container(


      height: 900,
      decoration: BoxDecoration(

        color: Colors.white,
        borderRadius: BorderRadius.circular(40)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 10,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                    borderRadius: BorderRadius.circular(5)
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image(image: AssetImage(_job.logoUrl)),
                      ),
                      SizedBox(width: 15,),
                      Text(_job.company,style: TextStyle(fontSize: 25),)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.bookmark_border),
                      SizedBox(width: 15,),
                      Icon(Icons.more_horiz)
                    ],

                  )

                ],
              ),
              SizedBox(height: 20,),
              Text(_job.title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.red,),
                      Text(_job.location,style: TextStyle(color: Colors.black54),)
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(Icons.timer,color: Colors.red,),
                      SizedBox(width: 10,),
                      Text("Full Time",style: TextStyle(color: Colors.black54),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text("Requirements",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,color: Colors.black),),
              SizedBox(height: 10,),
              //spread operator
              ..._job.req.map((e) => Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 5, 8,8),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    ConstrainedBox(
                        constraints: BoxConstraints(
                         maxWidth: MediaQuery.of(context).size.width*.80

                    ),
                      child: Text(e),

                    )
                  ],
                ),
              )).toList(),

              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                },
                child: Center(
                  child: Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.lightBlueAccent
                    ),
                    child: Center(
                      child: Text("Apply Now",style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                      ),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
