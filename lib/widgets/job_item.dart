import 'package:day24/model/job.dart';
import 'package:flutter/material.dart';

class JobItem extends StatelessWidget {
  Job  _job;
  JobItem(this._job);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.60,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(

              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset(_job.logoUrl),
                ),SizedBox(width: 8,),
                Text(_job.company,style: TextStyle(
                  fontSize: 20,
                ),),
                Spacer(),
                Icon(Icons.bookmark_border,size: 30,)

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(_job.title,style: TextStyle(
                fontSize: 18
              ),),
            ),
            Row(
              children: [
                Icon(Icons.location_on,size: 35,),
                SizedBox(height: 15,),
                Text(_job.location,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
