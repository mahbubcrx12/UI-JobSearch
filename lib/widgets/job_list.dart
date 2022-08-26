import 'package:day24/model/job.dart';
import 'package:day24/widgets/job_details.dart';
import 'package:day24/widgets/job_item.dart';
import 'package:flutter/material.dart';

class JobList extends StatelessWidget {
  final jobList=Job.generatedList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.30,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: jobList.length,
          itemBuilder: (context,index){
          return GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                    context: context,
                    builder: (context)=>JobDetails(jobList[index]));
              },
              child: JobItem(jobList[index]));
          },
          separatorBuilder: (_,index)=>SizedBox(width: 10,),

      ),

    );
  }
}
